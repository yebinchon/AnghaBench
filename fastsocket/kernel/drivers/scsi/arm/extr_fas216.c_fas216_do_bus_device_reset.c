
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct scsi_cmnd {TYPE_3__* device; int SCp; } ;
struct message {int fifo; } ;
struct TYPE_15__ {int msgs; int SCp; int phase; } ;
struct TYPE_13__ {int select_timeout; } ;
struct TYPE_12__ {int transfer_type; } ;
struct TYPE_16__ {TYPE_4__ scsi; TYPE_2__ ifcfg; TYPE_1__ dma; struct scsi_cmnd* SCpnt; } ;
struct TYPE_14__ {int id; } ;
typedef TYPE_5__ FAS216_Info ;


 int BUSID (int ) ;
 int BUS_DEVICE_RESET ;
 int CMD_FLUSHFIFO ;
 int CMD_NOP ;
 int CMD_SELECTATNSTOP ;
 int CMD_WITHDMA ;
 int LOG_ERROR ;
 int PHASE_SELECTION ;
 int REG_FF ;
 int REG_SDID ;
 int REG_STIM ;
 int fas216_cmd (TYPE_5__*,int) ;
 int fas216_log (TYPE_5__*,int ,char*) ;
 int fas216_set_stc (TYPE_5__*,int ) ;
 int fas216_set_sync (TYPE_5__*,int ) ;
 int fas216_writeb (TYPE_5__*,int ,int ) ;
 int fasdma_none ;
 int msgqueue_addmsg (int *,int,int ) ;
 int msgqueue_flush (int *) ;
 struct message* msgqueue_getmsg (int *,int ) ;

__attribute__((used)) static void fas216_do_bus_device_reset(FAS216_Info *info,
           struct scsi_cmnd *SCpnt)
{
 struct message *msg;




 info->scsi.phase = PHASE_SELECTION;
 info->scsi.SCp = SCpnt->SCp;
 info->SCpnt = SCpnt;
 info->dma.transfer_type = fasdma_none;

 fas216_log(info, LOG_ERROR, "sending bus device reset");

 msgqueue_flush(&info->scsi.msgs);
 msgqueue_addmsg(&info->scsi.msgs, 1, BUS_DEVICE_RESET);


 fas216_set_stc(info, 0);
 fas216_cmd(info, CMD_NOP | CMD_WITHDMA);


 fas216_cmd(info, CMD_FLUSHFIFO);


 fas216_writeb(info, REG_SDID, BUSID(SCpnt->device->id));
 fas216_writeb(info, REG_STIM, info->ifcfg.select_timeout);


 fas216_set_sync(info, SCpnt->device->id);

 msg = msgqueue_getmsg(&info->scsi.msgs, 0);

 fas216_writeb(info, REG_FF, BUS_DEVICE_RESET);
 msg->fifo = 1;

 fas216_cmd(info, CMD_SELECTATNSTOP);
}
