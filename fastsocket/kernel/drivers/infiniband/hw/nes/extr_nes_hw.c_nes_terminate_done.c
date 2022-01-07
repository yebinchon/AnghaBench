
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct nes_vnic {struct nes_device* nesdev; } ;
struct TYPE_2__ {int device; } ;
struct nes_qp {int term_flags; int terminate_timer; int lock; scalar_t__ hte_added; TYPE_1__ ibqp; } ;
struct nes_device {int dummy; } ;


 int NES_CQP_QP_DEL_HTE ;
 int NES_CQP_QP_IWARP_STATE_ERROR ;
 int NES_CQP_QP_RESET ;
 int NES_TERM_DONE ;
 int del_timer (int *) ;
 int nes_cm_disconn (struct nes_qp*) ;
 int nes_hw_modify_qp (struct nes_device*,struct nes_qp*,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct nes_vnic* to_nesvnic (int ) ;

__attribute__((used)) static void nes_terminate_done(struct nes_qp *nesqp, int timeout_occurred)
{
 u32 next_iwarp_state = NES_CQP_QP_IWARP_STATE_ERROR;
 unsigned long flags;
 struct nes_vnic *nesvnic = to_nesvnic(nesqp->ibqp.device);
 struct nes_device *nesdev = nesvnic->nesdev;
 u8 first_time = 0;

 spin_lock_irqsave(&nesqp->lock, flags);
 if (nesqp->hte_added) {
  nesqp->hte_added = 0;
  next_iwarp_state |= NES_CQP_QP_DEL_HTE;
 }

 first_time = (nesqp->term_flags & NES_TERM_DONE) == 0;
 nesqp->term_flags |= NES_TERM_DONE;
 spin_unlock_irqrestore(&nesqp->lock, flags);


 if (first_time) {
  if (timeout_occurred == 0)
   del_timer(&nesqp->terminate_timer);
  else
   next_iwarp_state |= NES_CQP_QP_RESET;

  nes_hw_modify_qp(nesdev, nesqp, next_iwarp_state, 0, 0);
  nes_cm_disconn(nesqp);
 }
}
