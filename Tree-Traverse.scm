(define (root node) (car node))
(define (left node) (cadr node))
(define (right node) (caddr node))

(define (in-order tree)
  (let in-order ((n tree) (acc '()))
    (if (null? n)
        acc
        (in-order
         (left n)
         (cons (root n)
               (in-order (right n) acc))))))

(define (pre-order tree)
  (if (null? tree)
      '()
      (append (list (root tree))
              (pre-order (left tree))
              (pre-order (right tree)))))

(define (post-order tree)
  (if (null? tree)
      '()
      (append (post-order (left tree))
              (post-order (right tree))
              (list (root tree)))))