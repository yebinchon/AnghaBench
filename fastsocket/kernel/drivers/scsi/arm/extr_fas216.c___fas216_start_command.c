
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct scsi_cmnd {int cmd_len; int * cmnd; TYPE_3__* device; } ;
struct message {int length; int fifo; int * msg; } ;
struct TYPE_15__ {int msgs; int phase; } ;
struct TYPE_12__ {int select_timeout; } ;
struct TYPE_16__ {TYPE_4__ scsi; TYPE_2__* host; TYPE_1__ ifcfg; } ;
struct TYPE_14__ {scalar_t__ id; } ;
struct TYPE_13__ {int host_no; } ;
typedef TYPE_5__ FAS216_Info ;


 int BUSID (scalar_t__) ;
 int CFIS_CF ;
 int CMD_FLUSHFIFO ;
 int CMD_NOP ;
 int CMD_SELECTATN ;
 int CMD_SELECTATN3 ;
 int CMD_SELECTATNSTOP ;
 int CMD_WITHDMA ;
 int PHASE_SELSTEPS ;
 int REG_CFIS ;
 int REG_FF ;
 int REG_SDID ;
 int REG_STIM ;
 int fas216_cmd (TYPE_5__*,int) ;
 int fas216_readb (TYPE_5__*,int ) ;
 int fas216_set_stc (TYPE_5__*,int ) ;
 int fas216_set_sync (TYPE_5__*,scalar_t__) ;
 int fas216_writeb (TYPE_5__*,int ,int ) ;
 struct message* msgqueue_getmsg (int *,int ) ;
 int msgqueue_msglength (int *) ;
 int printk (char*,...) ;

__attribute__((used)) static void __fas216_start_command(FAS216_Info *info, struct scsi_cmnd *SCpnt)
{
 int tot_msglen;


 fas216_set_stc(info, 0);
 fas216_cmd(info, CMD_NOP | CMD_WITHDMA);


 fas216_cmd(info, CMD_FLUSHFIFO);


 fas216_writeb(info, REG_SDID, BUSID(SCpnt->device->id));
 fas216_writeb(info, REG_STIM, info->ifcfg.select_timeout);


 fas216_set_sync(info, SCpnt->device->id);

 tot_msglen = msgqueue_msglength(&info->scsi.msgs);
 if (tot_msglen == 1 || tot_msglen == 3) {



  struct message *msg;
  int msgnr = 0, i;

  info->scsi.phase = PHASE_SELSTEPS;


  while ((msg = msgqueue_getmsg(&info->scsi.msgs, msgnr++)) != ((void*)0)) {
   for (i = 0; i < msg->length; i++)
    fas216_writeb(info, REG_FF, msg->msg[i]);
   msg->fifo = tot_msglen - (fas216_readb(info, REG_CFIS) & CFIS_CF);
  }


  for (i = 0; i < SCpnt->cmd_len; i++)
   fas216_writeb(info, REG_FF, SCpnt->cmnd[i]);

  if (tot_msglen == 1)
   fas216_cmd(info, CMD_SELECTATN);
  else
   fas216_cmd(info, CMD_SELECTATN3);
 } else {





  struct message *msg = msgqueue_getmsg(&info->scsi.msgs, 0);

  fas216_writeb(info, REG_FF, msg->msg[0]);
  msg->fifo = 1;

  fas216_cmd(info, CMD_SELECTATNSTOP);
 }
}
