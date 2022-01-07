
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_target_port {int lock; int req_lim; int free_tx; } ;
struct srp_iu {int list; } ;
typedef enum srp_iu_type { ____Placeholder_srp_iu_type } srp_iu_type ;


 int SRP_IU_RSP ;
 int list_add (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void srp_put_tx_iu(struct srp_target_port *target, struct srp_iu *iu,
     enum srp_iu_type iu_type)
{
 unsigned long flags;

 spin_lock_irqsave(&target->lock, flags);
 list_add(&iu->list, &target->free_tx);
 if (iu_type != SRP_IU_RSP)
  ++target->req_lim;
 spin_unlock_irqrestore(&target->lock, flags);
}
