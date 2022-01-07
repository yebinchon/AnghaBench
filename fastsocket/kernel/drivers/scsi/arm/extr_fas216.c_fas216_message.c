
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {unsigned char* message; int phase; int msgs; } ;
struct TYPE_13__ {TYPE_2__ scsi; TYPE_1__* host; } ;
struct TYPE_11__ {int host_no; } ;
typedef TYPE_3__ FAS216_Info ;


 int CMD_MSGACCEPTED ;
 int CMD_SETATN ;
 unsigned char EXTENDED_MESSAGE ;
 int MSG_PARITY_ERROR ;
 int PHASE_MSGOUT_EXPECT ;
 int REG_FF ;
 int fas216_checkmagic (TYPE_3__*) ;
 int fas216_cmd (TYPE_3__*,int ) ;
 int fas216_get_msg_byte (TYPE_3__*) ;
 int fas216_parse_message (TYPE_3__*,unsigned char*,unsigned int) ;
 unsigned char fas216_readb (TYPE_3__*,int ) ;
 int fas216_target (TYPE_3__*) ;
 int msgqueue_addmsg (int *,int,int ) ;
 int msgqueue_flush (int *) ;
 int printk (char*,...) ;

__attribute__((used)) static void fas216_message(FAS216_Info *info)
{
 unsigned char *message = info->scsi.message;
 unsigned int msglen = 1;
 int msgbyte = 0;

 fas216_checkmagic(info);

 message[0] = fas216_readb(info, REG_FF);

 if (message[0] == EXTENDED_MESSAGE) {
  msgbyte = fas216_get_msg_byte(info);

  if (msgbyte >= 0) {
   message[1] = msgbyte;

   for (msglen = 2; msglen < message[1] + 2; msglen++) {
    msgbyte = fas216_get_msg_byte(info);

    if (msgbyte >= 0)
     message[msglen] = msgbyte;
    else
     break;
   }
  }
 }

 if (msgbyte == -3)
  goto parity_error;
 fas216_parse_message(info, message, msglen);
 fas216_cmd(info, CMD_MSGACCEPTED);
 return;

parity_error:
 fas216_cmd(info, CMD_SETATN);
 msgqueue_flush(&info->scsi.msgs);
 msgqueue_addmsg(&info->scsi.msgs, 1, MSG_PARITY_ERROR);
 info->scsi.phase = PHASE_MSGOUT_EXPECT;
 fas216_cmd(info, CMD_MSGACCEPTED);
 return;
}
