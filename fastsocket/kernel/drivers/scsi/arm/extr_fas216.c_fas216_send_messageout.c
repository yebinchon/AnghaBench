
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct message {int length; unsigned int fifo; int * msg; } ;
struct TYPE_8__ {int phase; int msgs; } ;
struct TYPE_9__ {TYPE_1__ scsi; } ;
typedef TYPE_2__ FAS216_Info ;


 unsigned int CFIS_CF ;
 int CMD_FLUSHFIFO ;
 int CMD_TRANSFERINFO ;
 int NOP ;
 int PHASE_MSGOUT ;
 int REG_CFIS ;
 int REG_FF ;
 int fas216_checkmagic (TYPE_2__*) ;
 int fas216_cmd (TYPE_2__*,int ) ;
 unsigned int fas216_readb (TYPE_2__*,int ) ;
 int fas216_writeb (TYPE_2__*,int ,int ) ;
 struct message* msgqueue_getmsg (int *,int ) ;
 unsigned int msgqueue_msglength (int *) ;

__attribute__((used)) static void fas216_send_messageout(FAS216_Info *info, int start)
{
 unsigned int tot_msglen = msgqueue_msglength(&info->scsi.msgs);

 fas216_checkmagic(info);

 fas216_cmd(info, CMD_FLUSHFIFO);

 if (tot_msglen) {
  struct message *msg;
  int msgnr = 0;

  while ((msg = msgqueue_getmsg(&info->scsi.msgs, msgnr++)) != ((void*)0)) {
   int i;

   for (i = start; i < msg->length; i++)
    fas216_writeb(info, REG_FF, msg->msg[i]);

   msg->fifo = tot_msglen - (fas216_readb(info, REG_CFIS) & CFIS_CF);
   start = 0;
  }
 } else
  fas216_writeb(info, REG_FF, NOP);

 fas216_cmd(info, CMD_TRANSFERINFO);

 info->scsi.phase = PHASE_MSGOUT;
}
