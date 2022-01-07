
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c2_cq {int lock; } ;


 int SINGLE_DEPTH_NESTING ;
 int spin_lock_irq (int *) ;
 int spin_lock_nested (int *,int ) ;

__attribute__((used)) static inline void c2_lock_cqs(struct c2_cq *send_cq, struct c2_cq *recv_cq)
{
 if (send_cq == recv_cq)
  spin_lock_irq(&send_cq->lock);
 else if (send_cq > recv_cq) {
  spin_lock_irq(&send_cq->lock);
  spin_lock_nested(&recv_cq->lock, SINGLE_DEPTH_NESTING);
 } else {
  spin_lock_irq(&recv_cq->lock);
  spin_lock_nested(&send_cq->lock, SINGLE_DEPTH_NESTING);
 }
}
