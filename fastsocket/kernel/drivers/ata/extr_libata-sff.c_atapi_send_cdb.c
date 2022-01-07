
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int protocol; } ;
struct ata_queued_cmd {TYPE_1__ tf; TYPE_3__* dev; int cdb; } ;
struct ata_port {TYPE_2__* ops; void* hsm_task_state; } ;
struct TYPE_6__ {int cdb_len; } ;
struct TYPE_5__ {int (* bmdma_start ) (struct ata_queued_cmd*) ;int (* sff_data_xfer ) (TYPE_3__*,int ,int,int) ;} ;





 int DPRINTK (char*) ;
 void* HSM_ST ;
 void* HSM_ST_LAST ;
 int WARN_ON_ONCE (int) ;
 int ata_sff_sync (struct ata_port*) ;
 int stub1 (TYPE_3__*,int ,int,int) ;
 int stub2 (struct ata_queued_cmd*) ;

__attribute__((used)) static void atapi_send_cdb(struct ata_port *ap, struct ata_queued_cmd *qc)
{

 DPRINTK("send cdb\n");
 WARN_ON_ONCE(qc->dev->cdb_len < 12);

 ap->ops->sff_data_xfer(qc->dev, qc->cdb, qc->dev->cdb_len, 1);
 ata_sff_sync(ap);


 switch (qc->tf.protocol) {
 case 128:
  ap->hsm_task_state = HSM_ST;
  break;
 case 129:
  ap->hsm_task_state = HSM_ST_LAST;
  break;
 case 130:
  ap->hsm_task_state = HSM_ST_LAST;

  ap->ops->bmdma_start(qc);
  break;
 }
}
