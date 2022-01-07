
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_queued_cmd {int err_mask; int tag; struct ata_port* ap; } ;
struct ata_port {int lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* sff_irq_on ) (struct ata_port*) ;scalar_t__ error_handler; } ;


 int AC_ERR_HSM ;
 int ata_port_freeze (struct ata_port*) ;
 int ata_qc_complete (struct ata_queued_cmd*) ;
 struct ata_queued_cmd* ata_qc_from_tag (struct ata_port*,int ) ;
 scalar_t__ likely (int) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (struct ata_port*) ;
 int stub2 (struct ata_port*) ;

__attribute__((used)) static void ata_hsm_qc_complete(struct ata_queued_cmd *qc, int in_wq)
{
 struct ata_port *ap = qc->ap;
 unsigned long flags;

 if (ap->ops->error_handler) {
  if (in_wq) {
   spin_lock_irqsave(ap->lock, flags);




   qc = ata_qc_from_tag(ap, qc->tag);
   if (qc) {
    if (likely(!(qc->err_mask & AC_ERR_HSM))) {
     ap->ops->sff_irq_on(ap);
     ata_qc_complete(qc);
    } else
     ata_port_freeze(ap);
   }

   spin_unlock_irqrestore(ap->lock, flags);
  } else {
   if (likely(!(qc->err_mask & AC_ERR_HSM)))
    ata_qc_complete(qc);
   else
    ata_port_freeze(ap);
  }
 } else {
  if (in_wq) {
   spin_lock_irqsave(ap->lock, flags);
   ap->ops->sff_irq_on(ap);
   ata_qc_complete(qc);
   spin_unlock_irqrestore(ap->lock, flags);
  } else
   ata_qc_complete(qc);
 }
}
