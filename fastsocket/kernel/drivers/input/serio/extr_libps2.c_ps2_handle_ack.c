
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2dev {int nak; int flags; int wait; scalar_t__ cmdcnt; } ;


 int PS2_FLAG_ACK ;
 int PS2_FLAG_CMD ;
 int PS2_FLAG_CMD1 ;
 int PS2_FLAG_NAK ;
 int PS2_FLAG_WAITID ;



 int ps2_handle_response (struct ps2dev*,unsigned char) ;
 int wake_up (int *) ;

int ps2_handle_ack(struct ps2dev *ps2dev, unsigned char data)
{
 switch (data) {
  case 130:
   ps2dev->nak = 0;
   break;

  case 128:
   ps2dev->flags |= PS2_FLAG_NAK;
   ps2dev->nak = 128;
   break;

  case 129:
   if (ps2dev->flags & PS2_FLAG_NAK) {
    ps2dev->flags &= ~PS2_FLAG_NAK;
    ps2dev->nak = 129;
    break;
   }





  case 0x00:
  case 0x03:
  case 0x04:
   if (ps2dev->flags & PS2_FLAG_WAITID) {
    ps2dev->nak = 0;
    break;
   }

  default:
   return 0;
 }


 if (!ps2dev->nak) {
  ps2dev->flags &= ~PS2_FLAG_NAK;
  if (ps2dev->cmdcnt)
   ps2dev->flags |= PS2_FLAG_CMD | PS2_FLAG_CMD1;
 }

 ps2dev->flags &= ~PS2_FLAG_ACK;
 wake_up(&ps2dev->wait);

 if (data != 130)
  ps2_handle_response(ps2dev, data);

 return 1;
}
