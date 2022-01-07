
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2dev {int* cmdbuf; int serio; int cmdcnt; int flags; } ;




 int msecs_to_jiffies (int) ;
 int ps2_is_keyboard_id (int) ;
 int serio_continue_rx (int ) ;
 int serio_pause_rx (int ) ;

__attribute__((used)) static int ps2_adjust_timeout(struct ps2dev *ps2dev, int command, int timeout)
{
 switch (command) {
  case 128:







   if (timeout > msecs_to_jiffies(100))
    timeout = msecs_to_jiffies(100);
   break;

  case 129:






   if (ps2dev->cmdbuf[1] == 0xaa) {
    serio_pause_rx(ps2dev->serio);
    ps2dev->flags = 0;
    serio_continue_rx(ps2dev->serio);
    timeout = 0;
   }





   if (!ps2_is_keyboard_id(ps2dev->cmdbuf[1])) {
    serio_pause_rx(ps2dev->serio);
    ps2dev->flags = ps2dev->cmdcnt = 0;
    serio_continue_rx(ps2dev->serio);
    timeout = 0;
   }
   break;

  default:
   break;
 }

 return timeout;
}
