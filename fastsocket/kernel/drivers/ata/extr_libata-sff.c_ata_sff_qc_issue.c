
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int protocol; int flags; } ;
struct ata_queued_cmd {TYPE_2__* dev; TYPE_3__ tf; struct ata_port* ap; } ;
struct ata_port {int flags; void* hsm_task_state; TYPE_1__* ops; } ;
struct TYPE_7__ {int flags; int devno; } ;
struct TYPE_6__ {int (* bmdma_setup ) (struct ata_queued_cmd*) ;int (* sff_tf_load ) (struct ata_port*,TYPE_3__*) ;int (* bmdma_start ) (struct ata_queued_cmd*) ;} ;


 unsigned int AC_ERR_SYSTEM ;



 int ATA_DFLAG_CDB_INTR ;
 int ATA_FLAG_PIO_POLLING ;



 int ATA_TFLAG_POLLING ;
 int ATA_TFLAG_WRITE ;
 int BUG () ;
 void* HSM_ST ;
 void* HSM_ST_FIRST ;
 void* HSM_ST_LAST ;
 int WARN_ON_ONCE (int) ;
 int ata_dev_select (struct ata_port*,int ,int,int ) ;
 int ata_qc_set_polling (struct ata_queued_cmd*) ;
 int ata_sff_queue_pio_task (struct ata_port*,int ) ;
 int ata_tf_to_host (struct ata_port*,TYPE_3__*) ;
 int stub1 (struct ata_port*,TYPE_3__*) ;
 int stub2 (struct ata_queued_cmd*) ;
 int stub3 (struct ata_queued_cmd*) ;
 int stub4 (struct ata_port*,TYPE_3__*) ;
 int stub5 (struct ata_queued_cmd*) ;

unsigned int ata_sff_qc_issue(struct ata_queued_cmd *qc)
{
 struct ata_port *ap = qc->ap;




 if (ap->flags & ATA_FLAG_PIO_POLLING) {
  switch (qc->tf.protocol) {
  case 128:
  case 129:
  case 131:
  case 132:
   qc->tf.flags |= ATA_TFLAG_POLLING;
   break;
  case 133:
   if (qc->dev->flags & ATA_DFLAG_CDB_INTR)

    BUG();
   break;
  default:
   break;
  }
 }


 ata_dev_select(ap, qc->dev->devno, 1, 0);


 switch (qc->tf.protocol) {
 case 129:
  if (qc->tf.flags & ATA_TFLAG_POLLING)
   ata_qc_set_polling(qc);

  ata_tf_to_host(ap, &qc->tf);
  ap->hsm_task_state = HSM_ST_LAST;

  if (qc->tf.flags & ATA_TFLAG_POLLING)
   ata_sff_queue_pio_task(ap, 0);

  break;

 case 130:
  WARN_ON_ONCE(qc->tf.flags & ATA_TFLAG_POLLING);

  ap->ops->sff_tf_load(ap, &qc->tf);
  ap->ops->bmdma_setup(qc);
  ap->ops->bmdma_start(qc);
  ap->hsm_task_state = HSM_ST_LAST;
  break;

 case 128:
  if (qc->tf.flags & ATA_TFLAG_POLLING)
   ata_qc_set_polling(qc);

  ata_tf_to_host(ap, &qc->tf);

  if (qc->tf.flags & ATA_TFLAG_WRITE) {

   ap->hsm_task_state = HSM_ST_FIRST;
   ata_sff_queue_pio_task(ap, 0);




  } else {

   ap->hsm_task_state = HSM_ST;

   if (qc->tf.flags & ATA_TFLAG_POLLING)
    ata_sff_queue_pio_task(ap, 0);





  }

  break;

 case 131:
 case 132:
  if (qc->tf.flags & ATA_TFLAG_POLLING)
   ata_qc_set_polling(qc);

  ata_tf_to_host(ap, &qc->tf);

  ap->hsm_task_state = HSM_ST_FIRST;


  if ((!(qc->dev->flags & ATA_DFLAG_CDB_INTR)) ||
      (qc->tf.flags & ATA_TFLAG_POLLING))
   ata_sff_queue_pio_task(ap, 0);
  break;

 case 133:
  WARN_ON_ONCE(qc->tf.flags & ATA_TFLAG_POLLING);

  ap->ops->sff_tf_load(ap, &qc->tf);
  ap->ops->bmdma_setup(qc);
  ap->hsm_task_state = HSM_ST_FIRST;


  if (!(qc->dev->flags & ATA_DFLAG_CDB_INTR))
   ata_sff_queue_pio_task(ap, 0);
  break;

 default:
  WARN_ON_ONCE(1);
  return AC_ERR_SYSTEM;
 }

 return 0;
}
