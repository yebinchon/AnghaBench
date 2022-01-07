
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {scalar_t__ hw_stopped; TYPE_2__* termios; int flags; TYPE_1__* driver; struct slgt_info* driver_data; } ;
struct slgt_info {int lock; int signals; } ;
struct ktermios {int c_cflag; } ;
struct TYPE_4__ {int c_cflag; } ;
struct TYPE_3__ {int name; } ;


 int CBAUD ;
 int CRTSCTS ;
 int DBGINFO (char*) ;
 int SerialSignal_DTR ;
 int SerialSignal_RTS ;
 int TTY_THROTTLED ;
 int change_params (struct slgt_info*) ;
 int set_signals (struct slgt_info*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,int *) ;
 int tx_release (struct tty_struct*) ;

__attribute__((used)) static void set_termios(struct tty_struct *tty, struct ktermios *old_termios)
{
 struct slgt_info *info = tty->driver_data;
 unsigned long flags;

 DBGINFO(("%s set_termios\n", tty->driver->name));

 change_params(info);


 if (old_termios->c_cflag & CBAUD &&
     !(tty->termios->c_cflag & CBAUD)) {
  info->signals &= ~(SerialSignal_RTS + SerialSignal_DTR);
  spin_lock_irqsave(&info->lock,flags);
  set_signals(info);
  spin_unlock_irqrestore(&info->lock,flags);
 }


 if (!(old_termios->c_cflag & CBAUD) &&
     tty->termios->c_cflag & CBAUD) {
  info->signals |= SerialSignal_DTR;
   if (!(tty->termios->c_cflag & CRTSCTS) ||
       !test_bit(TTY_THROTTLED, &tty->flags)) {
   info->signals |= SerialSignal_RTS;
   }
  spin_lock_irqsave(&info->lock,flags);
   set_signals(info);
  spin_unlock_irqrestore(&info->lock,flags);
 }


 if (old_termios->c_cflag & CRTSCTS &&
     !(tty->termios->c_cflag & CRTSCTS)) {
  tty->hw_stopped = 0;
  tx_release(tty);
 }
}
