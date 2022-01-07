
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c2_cq {int lock; } ;


 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static inline void c2_unlock_cqs(struct c2_cq *send_cq, struct c2_cq *recv_cq)
{
 if (send_cq == recv_cq)
  spin_unlock_irq(&send_cq->lock);
 else if (send_cq > recv_cq) {
  spin_unlock(&recv_cq->lock);
  spin_unlock_irq(&send_cq->lock);
 } else {
  spin_unlock(&send_cq->lock);
  spin_unlock_irq(&recv_cq->lock);
 }
}
