
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nes_vnic {int dummy; } ;
struct nes_qp {int pau_lock; scalar_t__ pau_busy; scalar_t__ pau_pending; } ;


 int forward_fpdus (struct nes_vnic*,struct nes_qp*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void process_fpdus(struct nes_vnic *nesvnic, struct nes_qp *nesqp)
{
 int again = 1;
 unsigned long flags;

 do {

  forward_fpdus(nesvnic, nesqp);

  spin_lock_irqsave(&nesqp->pau_lock, flags);
  if (nesqp->pau_pending) {
   nesqp->pau_pending = 0;
  } else {
   nesqp->pau_busy = 0;
   again = 0;
  }

  spin_unlock_irqrestore(&nesqp->pau_lock, flags);
 } while (again);
}
