
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int flags; int protocol; } ;
struct ata_queued_cmd {int flags; int err_mask; TYPE_3__* dev; TYPE_2__ tf; } ;
struct ata_eh_info {int dummy; } ;
struct TYPE_4__ {struct ata_eh_info eh_info; } ;
struct ata_port {int hsm_task_state; int print_id; int lock; TYPE_1__ link; } ;
struct TYPE_6__ {int horkage; int devno; } ;


 int AC_ERR_DEV ;
 int AC_ERR_HSM ;
 int AC_ERR_NODEV_HINT ;
 int ATAPI_PROT_PIO ;
 int ATA_BUSY ;
 int ATA_DF ;
 int ATA_DRQ ;
 int ATA_ERR ;
 int ATA_HORKAGE_DIAGNOSTIC ;
 int ATA_HORKAGE_STUCK_ERR ;
 int ATA_PROT_PIO ;
 int ATA_QCFLAG_ACTIVE ;
 int ATA_TFLAG_POLLING ;
 int ATA_TFLAG_WRITE ;
 int BUG () ;
 int DPRINTK (char*,int ,int ,int,...) ;



 void* HSM_ST_IDLE ;

 int WARN_ON_ONCE (int) ;
 int __ac_err_mask (int) ;
 int ata_ehi_push_desc (struct ata_eh_info*,char*,...) ;
 int ata_hsm_ok_in_wq (struct ata_port*,struct ata_queued_cmd*) ;
 int ata_hsm_qc_complete (struct ata_queued_cmd*,int) ;
 int ata_ok (int) ;
 int ata_pio_sectors (struct ata_queued_cmd*) ;
 int ata_wait_idle (struct ata_port*) ;
 int atapi_pio_bytes (struct ata_queued_cmd*) ;
 int atapi_send_cdb (struct ata_port*,struct ata_queued_cmd*) ;
 int likely (int) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int unlikely (int) ;

int ata_sff_hsm_move(struct ata_port *ap, struct ata_queued_cmd *qc,
       u8 status, int in_wq)
{
 struct ata_eh_info *ehi = &ap->link.eh_info;
 unsigned long flags = 0;
 int poll_next;

 WARN_ON_ONCE((qc->flags & ATA_QCFLAG_ACTIVE) == 0);





 WARN_ON_ONCE(in_wq != ata_hsm_ok_in_wq(ap, qc));

fsm_start:
 DPRINTK("ata%u: protocol %d task_state %d (dev_stat 0x%X)\n",
  ap->print_id, qc->tf.protocol, ap->hsm_task_state, status);

 switch (ap->hsm_task_state) {
 case 129:






  poll_next = (qc->tf.flags & ATA_TFLAG_POLLING);


  if (unlikely((status & ATA_DRQ) == 0)) {

   if (likely(status & (ATA_ERR | ATA_DF)))

    qc->err_mask |= AC_ERR_DEV;
   else {

    ata_ehi_push_desc(ehi,
     "ST_FIRST: !(DRQ|ERR|DF)");
    qc->err_mask |= AC_ERR_HSM;
   }

   ap->hsm_task_state = 130;
   goto fsm_start;
  }







  if (unlikely(status & (ATA_ERR | ATA_DF))) {





   if (!(qc->dev->horkage & ATA_HORKAGE_STUCK_ERR)) {
    ata_ehi_push_desc(ehi, "ST_FIRST: "
     "DRQ=1 with device error, "
     "dev_stat 0x%X", status);
    qc->err_mask |= AC_ERR_HSM;
    ap->hsm_task_state = 130;
    goto fsm_start;
   }
  }






  if (in_wq)
   spin_lock_irqsave(ap->lock, flags);

  if (qc->tf.protocol == ATA_PROT_PIO) {
   ap->hsm_task_state = 131;
   ata_pio_sectors(qc);
  } else

   atapi_send_cdb(ap, qc);

  if (in_wq)
   spin_unlock_irqrestore(ap->lock, flags);




  break;

 case 131:

  if (qc->tf.protocol == ATAPI_PROT_PIO) {

   if ((status & ATA_DRQ) == 0) {



    ap->hsm_task_state = 128;
    goto fsm_start;
   }







   if (unlikely(status & (ATA_ERR | ATA_DF))) {
    ata_ehi_push_desc(ehi, "ST-ATAPI: "
     "DRQ=1 with device error, "
     "dev_stat 0x%X", status);
    qc->err_mask |= AC_ERR_HSM;
    ap->hsm_task_state = 130;
    goto fsm_start;
   }

   atapi_pio_bytes(qc);

   if (unlikely(ap->hsm_task_state == 130))

    goto fsm_start;

  } else {

   if (unlikely((status & ATA_DRQ) == 0)) {

    if (likely(status & (ATA_ERR | ATA_DF))) {

     qc->err_mask |= AC_ERR_DEV;





     if (qc->dev->horkage &
         ATA_HORKAGE_DIAGNOSTIC)
      qc->err_mask |=
       AC_ERR_NODEV_HINT;
    } else {




     ata_ehi_push_desc(ehi, "ST-ATA: "
      "DRQ=0 without device error, "
      "dev_stat 0x%X", status);
     qc->err_mask |= AC_ERR_HSM |
       AC_ERR_NODEV_HINT;
    }

    ap->hsm_task_state = 130;
    goto fsm_start;
   }
   if (unlikely(status & (ATA_ERR | ATA_DF))) {

    qc->err_mask |= AC_ERR_DEV;

    if (!(qc->tf.flags & ATA_TFLAG_WRITE)) {
     ata_pio_sectors(qc);
     status = ata_wait_idle(ap);
    }

    if (status & (ATA_BUSY | ATA_DRQ)) {
     ata_ehi_push_desc(ehi, "ST-ATA: "
      "BUSY|DRQ persists on ERR|DF, "
      "dev_stat 0x%X", status);
     qc->err_mask |= AC_ERR_HSM;
    }
    if (status == 0x7f)
     qc->err_mask |= AC_ERR_NODEV_HINT;





    ap->hsm_task_state = 130;
    goto fsm_start;
   }

   ata_pio_sectors(qc);

   if (ap->hsm_task_state == 128 &&
       (!(qc->tf.flags & ATA_TFLAG_WRITE))) {

    status = ata_wait_idle(ap);
    goto fsm_start;
   }
  }

  poll_next = 1;
  break;

 case 128:
  if (unlikely(!ata_ok(status))) {
   qc->err_mask |= __ac_err_mask(status);
   ap->hsm_task_state = 130;
   goto fsm_start;
  }


  DPRINTK("ata%u: dev %u command complete, drv_stat 0x%x\n",
   ap->print_id, qc->dev->devno, status);

  WARN_ON_ONCE(qc->err_mask & (AC_ERR_DEV | AC_ERR_HSM));

  ap->hsm_task_state = HSM_ST_IDLE;


  ata_hsm_qc_complete(qc, in_wq);

  poll_next = 0;
  break;

 case 130:
  ap->hsm_task_state = HSM_ST_IDLE;


  ata_hsm_qc_complete(qc, in_wq);

  poll_next = 0;
  break;
 default:
  poll_next = 0;
  BUG();
 }

 return poll_next;
}
