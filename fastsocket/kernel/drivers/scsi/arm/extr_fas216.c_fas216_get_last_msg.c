
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct message {int fifo; int* msg; } ;
struct TYPE_5__ {int msgs; } ;
struct TYPE_6__ {TYPE_1__ scsi; } ;
typedef TYPE_2__ FAS216_Info ;


 int EXTENDED_MESSAGE ;
 int LOG_MESSAGES ;
 unsigned short NOP ;
 int fas216_log (TYPE_2__*,int ,char*,unsigned short,int) ;
 struct message* msgqueue_getmsg (int *,int ) ;

__attribute__((used)) static inline unsigned short
fas216_get_last_msg(FAS216_Info *info, int pos)
{
 unsigned short packed_msg = NOP;
 struct message *msg;
 int msgnr = 0;

 while ((msg = msgqueue_getmsg(&info->scsi.msgs, msgnr++)) != ((void*)0)) {
  if (pos >= msg->fifo)
   break;
 }

 if (msg) {
  if (msg->msg[0] == EXTENDED_MESSAGE)
   packed_msg = EXTENDED_MESSAGE | msg->msg[2] << 8;
  else
   packed_msg = msg->msg[0];
 }

 fas216_log(info, LOG_MESSAGES,
  "Message: %04x found at position %02x\n", packed_msg, pos);

 return packed_msg;
}
