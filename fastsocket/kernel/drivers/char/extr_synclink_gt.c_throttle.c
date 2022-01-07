
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {TYPE_1__* termios; int name; struct slgt_info* driver_data; } ;
struct slgt_info {int lock; int signals; int device_name; } ;
struct TYPE_2__ {int c_cflag; } ;


 int CRTSCTS ;
 int DBGINFO (char*) ;
 scalar_t__ I_IXOFF (struct tty_struct*) ;
 int STOP_CHAR (struct tty_struct*) ;
 int SerialSignal_RTS ;
 scalar_t__ sanity_check (struct slgt_info*,int ,char*) ;
 int send_xchar (struct tty_struct*,int ) ;
 int set_signals (struct slgt_info*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void throttle(struct tty_struct * tty)
{
 struct slgt_info *info = tty->driver_data;
 unsigned long flags;

 if (sanity_check(info, tty->name, "throttle"))
  return;
 DBGINFO(("%s throttle\n", info->device_name));
 if (I_IXOFF(tty))
  send_xchar(tty, STOP_CHAR(tty));
  if (tty->termios->c_cflag & CRTSCTS) {
  spin_lock_irqsave(&info->lock,flags);
  info->signals &= ~SerialSignal_RTS;
   set_signals(info);
  spin_unlock_irqrestore(&info->lock,flags);
 }
}
