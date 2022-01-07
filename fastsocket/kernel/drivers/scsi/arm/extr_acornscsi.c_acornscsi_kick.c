
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct scsi_cmnd {int tag; int * cmnd; TYPE_5__* device; int SCp; } ;
typedef int intr_ret_t ;
struct TYPE_17__ {int removes; int writes; int reads; int miscs; } ;
struct TYPE_14__ {scalar_t__ xfer_done; scalar_t__ xfer_required; scalar_t__ xfer_setup; } ;
struct TYPE_13__ {int SCp; int phase; scalar_t__ disconnectable; } ;
struct TYPE_12__ {int disconnected; int issue; } ;
struct TYPE_18__ {TYPE_6__ stats; int busyluns; TYPE_4__* host; TYPE_3__ dma; TYPE_2__ scsi; struct scsi_cmnd* SCpnt; TYPE_1__ queues; struct scsi_cmnd* origSCpnt; } ;
struct TYPE_16__ {int id; int current_tag; scalar_t__ lun; scalar_t__ simple_tags; } ;
struct TYPE_15__ {int host_no; } ;
typedef TYPE_7__ AS_Host ;


 int ASR_BSY ;
 int ASR_CIP ;
 int ASR_INT ;



 int CMND_SELWITHATN ;
 int DBG (struct scsi_cmnd*,int ) ;
 int INTR_IDLE ;
 int INTR_PROCESSING ;
 int PHASE_CONNECTING ;
 int SBIC_ASR ;
 int SBIC_CMND ;
 int SBIC_DESTID ;
 int acornscsi_cmdtype (int ) ;
 int acornscsi_target (TYPE_7__*) ;
 int printk (char*,int ,int,...) ;
 int queue_add_cmd_tail (int *,struct scsi_cmnd*) ;
 struct scsi_cmnd* queue_remove_exclude (int *,int ) ;
 int sbic_arm_read (TYPE_7__*,int ) ;
 int sbic_arm_write (TYPE_7__*,int ,int) ;
 int set_bit (scalar_t__,int ) ;

__attribute__((used)) static
intr_ret_t acornscsi_kick(AS_Host *host)
{
    int from_queue = 0;
    struct scsi_cmnd *SCpnt;


    SCpnt = host->origSCpnt;
    host->origSCpnt = ((void*)0);


    if (!SCpnt) {
 SCpnt = queue_remove_exclude(&host->queues.issue, host->busyluns);
 if (!SCpnt)
     return INTR_IDLE;

 from_queue = 1;
    }

    if (host->scsi.disconnectable && host->SCpnt) {
 queue_add_cmd_tail(&host->queues.disconnected, host->SCpnt);
 host->scsi.disconnectable = 0;




 host->SCpnt = ((void*)0);
    }





    if (!(sbic_arm_read(host, SBIC_ASR) & (ASR_INT|ASR_BSY|ASR_CIP))) {
 sbic_arm_write(host, SBIC_DESTID, SCpnt->device->id);
 sbic_arm_write(host, SBIC_CMND, CMND_SELWITHATN);
    }





    host->scsi.phase = PHASE_CONNECTING;
    host->SCpnt = SCpnt;
    host->scsi.SCp = SCpnt->SCp;
    host->dma.xfer_setup = 0;
    host->dma.xfer_required = 0;
    host->dma.xfer_done = 0;







    if (from_queue) {
     set_bit(SCpnt->device->id * 8 + SCpnt->device->lun, host->busyluns);

 host->stats.removes += 1;

 switch (acornscsi_cmdtype(SCpnt->cmnd[0])) {
 case 128:
     host->stats.writes += 1;
     break;
 case 129:
     host->stats.reads += 1;
     break;
 case 130:
     host->stats.miscs += 1;
     break;
 }
    }

    return INTR_PROCESSING;
}
