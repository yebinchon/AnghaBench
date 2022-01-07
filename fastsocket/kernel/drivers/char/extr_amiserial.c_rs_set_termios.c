
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {TYPE_1__* termios; scalar_t__ hw_stopped; int flags; struct async_struct* driver_data; } ;
struct ktermios {unsigned int c_cflag; } ;
struct async_struct {int MCR; int open_wait; } ;
struct TYPE_2__ {unsigned int c_cflag; } ;


 unsigned int CBAUD ;
 int CLOCAL ;
 int CRTSCTS ;
 int SER_DTR ;
 int SER_RTS ;
 int TTY_THROTTLED ;
 int change_speed (struct async_struct*,struct ktermios*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int rs_start (struct tty_struct*) ;
 int rtsdtr_ctrl (int) ;
 int test_bit (int ,int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void rs_set_termios(struct tty_struct *tty, struct ktermios *old_termios)
{
 struct async_struct *info = tty->driver_data;
 unsigned long flags;
 unsigned int cflag = tty->termios->c_cflag;

 change_speed(info, old_termios);


 if ((old_termios->c_cflag & CBAUD) &&
     !(cflag & CBAUD)) {
  info->MCR &= ~(SER_DTR|SER_RTS);
  local_irq_save(flags);
  rtsdtr_ctrl(info->MCR);
  local_irq_restore(flags);
 }


 if (!(old_termios->c_cflag & CBAUD) &&
     (cflag & CBAUD)) {
  info->MCR |= SER_DTR;
  if (!(tty->termios->c_cflag & CRTSCTS) ||
      !test_bit(TTY_THROTTLED, &tty->flags)) {
   info->MCR |= SER_RTS;
  }
  local_irq_save(flags);
  rtsdtr_ctrl(info->MCR);
  local_irq_restore(flags);
 }


 if ((old_termios->c_cflag & CRTSCTS) &&
     !(tty->termios->c_cflag & CRTSCTS)) {
  tty->hw_stopped = 0;
  rs_start(tty);
 }
}
