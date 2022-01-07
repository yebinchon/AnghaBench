
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int sent_command; } ;
struct TYPE_10__ {int phase; TYPE_1__ SCp; } ;
struct TYPE_12__ {TYPE_2__ scsi; TYPE_3__* SCpnt; } ;
struct TYPE_11__ {int cmd_len; int * cmnd; } ;
typedef TYPE_4__ FAS216_Info ;


 int CMD_FLUSHFIFO ;
 int CMD_NOP ;
 int CMD_TRANSFERINFO ;
 int CMD_WITHDMA ;
 int PHASE_COMMAND ;
 int REG_FF ;
 int fas216_checkmagic (TYPE_4__*) ;
 int fas216_cmd (TYPE_4__*,int) ;
 int fas216_writeb (TYPE_4__*,int ,int ) ;

__attribute__((used)) static void fas216_send_command(FAS216_Info *info)
{
 int i;

 fas216_checkmagic(info);

 fas216_cmd(info, CMD_NOP|CMD_WITHDMA);
 fas216_cmd(info, CMD_FLUSHFIFO);


 for (i = info->scsi.SCp.sent_command; i < info->SCpnt->cmd_len; i++)
  fas216_writeb(info, REG_FF, info->SCpnt->cmnd[i]);

 fas216_cmd(info, CMD_TRANSFERINFO);

 info->scsi.phase = PHASE_COMMAND;
}
