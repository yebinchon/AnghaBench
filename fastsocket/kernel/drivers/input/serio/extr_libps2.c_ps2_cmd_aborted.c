
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2dev {int flags; int nak; int wait; } ;


 int PS2_FLAG_ACK ;
 int PS2_FLAG_CMD ;
 int PS2_FLAG_NAK ;
 int wake_up (int *) ;

void ps2_cmd_aborted(struct ps2dev *ps2dev)
{
 if (ps2dev->flags & PS2_FLAG_ACK)
  ps2dev->nak = 1;

 if (ps2dev->flags & (PS2_FLAG_ACK | PS2_FLAG_CMD))
  wake_up(&ps2dev->wait);


 ps2dev->flags &= PS2_FLAG_NAK;
}
