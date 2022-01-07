
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2dev {int nak; int flags; int serio; int wait; } ;


 int PS2_FLAG_ACK ;
 int msecs_to_jiffies (int) ;
 int serio_continue_rx (int ) ;
 int serio_pause_rx (int ) ;
 scalar_t__ serio_write (int ,unsigned char) ;
 int wait_event_timeout (int ,int,int ) ;

int ps2_sendbyte(struct ps2dev *ps2dev, unsigned char byte, int timeout)
{
 serio_pause_rx(ps2dev->serio);
 ps2dev->nak = 1;
 ps2dev->flags |= PS2_FLAG_ACK;
 serio_continue_rx(ps2dev->serio);

 if (serio_write(ps2dev->serio, byte) == 0)
  wait_event_timeout(ps2dev->wait,
       !(ps2dev->flags & PS2_FLAG_ACK),
       msecs_to_jiffies(timeout));

 serio_pause_rx(ps2dev->serio);
 ps2dev->flags &= ~PS2_FLAG_ACK;
 serio_continue_rx(ps2dev->serio);

 return -ps2dev->nak;
}
