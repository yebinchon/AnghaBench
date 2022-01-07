
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct scsi_cmnd {scalar_t__* cmnd; TYPE_3__* device; scalar_t__ tag; int SCp; } ;
struct TYPE_15__ {int clockrate; int sync_max_depth; } ;
struct TYPE_14__ {int* cfg; int msgs; int SCp; int phase; } ;
struct TYPE_11__ {int transfer_type; } ;
struct TYPE_16__ {TYPE_5__ ifcfg; TYPE_4__ scsi; TYPE_2__* device; TYPE_1__ dma; struct scsi_cmnd* SCpnt; } ;
struct TYPE_13__ {size_t id; int lun; } ;
struct TYPE_12__ {scalar_t__ sync_state; int disconnect_ok; } ;
typedef TYPE_6__ FAS216_Info ;


 int CNTL1_PTE ;
 int EXTENDED_MESSAGE ;
 int EXTENDED_SDTR ;
 int IDENTIFY (int,int ) ;
 scalar_t__ INQUIRY ;
 int PHASE_SELECTION ;
 int REG_CNTL1 ;
 scalar_t__ REQUEST_SENSE ;
 int SIMPLE_QUEUE_TAG ;
 int __fas216_start_command (TYPE_6__*,struct scsi_cmnd*) ;
 int fas216_writeb (TYPE_6__*,int ,int) ;
 int fasdma_none ;
 int msgqueue_addmsg (int *,int,int ,...) ;
 int msgqueue_flush (int *) ;
 scalar_t__ neg_complete ;
 scalar_t__ neg_inprogress ;
 scalar_t__ neg_wait ;
 scalar_t__ parity_test (TYPE_6__*,size_t) ;

__attribute__((used)) static void fas216_start_command(FAS216_Info *info, struct scsi_cmnd *SCpnt)
{
 int disconnect_ok;




 info->scsi.phase = PHASE_SELECTION;
 info->scsi.SCp = SCpnt->SCp;
 info->SCpnt = SCpnt;
 info->dma.transfer_type = fasdma_none;

 if (parity_test(info, SCpnt->device->id))
  fas216_writeb(info, REG_CNTL1, info->scsi.cfg[0] | CNTL1_PTE);
 else
  fas216_writeb(info, REG_CNTL1, info->scsi.cfg[0]);




 disconnect_ok = SCpnt->cmnd[0] != REQUEST_SENSE &&
   info->device[SCpnt->device->id].disconnect_ok;




 msgqueue_flush(&info->scsi.msgs);
 msgqueue_addmsg(&info->scsi.msgs, 1, IDENTIFY(disconnect_ok, SCpnt->device->lun));




 if (SCpnt->tag)
  msgqueue_addmsg(&info->scsi.msgs, 2, SIMPLE_QUEUE_TAG, SCpnt->tag);

 do {
 } while (0);

 __fas216_start_command(info, SCpnt);
}
