
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int command; int feature; } ;
struct ata_queued_cmd {int err_mask; int flags; TYPE_3__ tf; int tag; struct ata_device* dev; struct ata_port* ap; } ;
struct ata_port {int pflags; TYPE_1__* ops; } ;
struct ata_eh_info {int * dev_action; } ;
struct ata_device {size_t devno; int flags; TYPE_2__* link; } ;
struct TYPE_5__ {struct ata_eh_info eh_info; } ;
struct TYPE_4__ {scalar_t__ error_handler; } ;






 int ATA_DFLAG_DUBIOUS_XFER ;
 int ATA_DFLAG_SLEEPING ;
 int ATA_EH_REVALIDATE ;
 int ATA_PFLAG_FROZEN ;
 int ATA_QCFLAG_EH_SCHEDULED ;
 int ATA_QCFLAG_FAILED ;
 int ATA_QCFLAG_RESULT_TF ;
 int SETFEATURES_WC_OFF ;
 int SETFEATURES_WC_ON ;
 int WARN_ON_ONCE (int) ;
 int __ata_qc_complete (struct ata_queued_cmd*) ;
 int ata_port_schedule_eh (struct ata_port*) ;
 int ata_qc_schedule_eh (struct ata_queued_cmd*) ;
 int ata_tag_internal (int ) ;
 int ata_verify_xfer (struct ata_queued_cmd*) ;
 int fill_result_tf (struct ata_queued_cmd*) ;
 scalar_t__ unlikely (int) ;

void ata_qc_complete(struct ata_queued_cmd *qc)
{
 struct ata_port *ap = qc->ap;
 if (ap->ops->error_handler) {
  struct ata_device *dev = qc->dev;
  struct ata_eh_info *ehi = &dev->link->eh_info;

  if (unlikely(qc->err_mask))
   qc->flags |= ATA_QCFLAG_FAILED;

  if (unlikely(qc->flags & ATA_QCFLAG_FAILED)) {

   fill_result_tf(qc);

   if (!ata_tag_internal(qc->tag))
    ata_qc_schedule_eh(qc);
   else
    __ata_qc_complete(qc);
   return;
  }

  WARN_ON_ONCE(ap->pflags & ATA_PFLAG_FROZEN);


  if (qc->flags & ATA_QCFLAG_RESULT_TF)
   fill_result_tf(qc);




  switch (qc->tf.command) {
  case 130:
   if (qc->tf.feature != SETFEATURES_WC_ON &&
       qc->tf.feature != SETFEATURES_WC_OFF)
    break;

  case 131:
  case 129:

   ehi->dev_action[dev->devno] |= ATA_EH_REVALIDATE;
   ata_port_schedule_eh(ap);
   break;

  case 128:
   dev->flags |= ATA_DFLAG_SLEEPING;
   break;
  }

  if (unlikely(dev->flags & ATA_DFLAG_DUBIOUS_XFER))
   ata_verify_xfer(qc);

  __ata_qc_complete(qc);
 } else {
  if (qc->flags & ATA_QCFLAG_EH_SCHEDULED)
   return;


  if (qc->err_mask || qc->flags & ATA_QCFLAG_RESULT_TF)
   fill_result_tf(qc);

  __ata_qc_complete(qc);
 }
}
