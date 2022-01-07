
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehca_shca {int dummy; } ;
struct ehca_eq {int spinlock; int ipz_queue; } ;


 void* ipz_eqit_eq_get_inc_valid (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void *ehca_poll_eq(struct ehca_shca *shca, struct ehca_eq *eq)
{
 unsigned long flags;
 void *eqe;

 spin_lock_irqsave(&eq->spinlock, flags);
 eqe = ipz_eqit_eq_get_inc_valid(&eq->ipz_queue);
 spin_unlock_irqrestore(&eq->spinlock, flags);

 return eqe;
}
