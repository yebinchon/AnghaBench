
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {scalar_t__ hw_stopped; TYPE_1__* termios; scalar_t__ driver_data; } ;
struct ktermios {int c_cflag; scalar_t__ c_ispeed; scalar_t__ c_ospeed; } ;
typedef int modem_info ;
struct TYPE_2__ {int c_cflag; scalar_t__ c_ispeed; scalar_t__ c_ospeed; } ;


 int CRTSCTS ;
 int isdn_tty_change_speed (int *) ;

__attribute__((used)) static void
isdn_tty_set_termios(struct tty_struct *tty, struct ktermios *old_termios)
{
 modem_info *info = (modem_info *) tty->driver_data;

 if (!old_termios)
  isdn_tty_change_speed(info);
 else {
  if (tty->termios->c_cflag == old_termios->c_cflag &&
      tty->termios->c_ispeed == old_termios->c_ispeed &&
      tty->termios->c_ospeed == old_termios->c_ospeed)
   return;
  isdn_tty_change_speed(info);
  if ((old_termios->c_cflag & CRTSCTS) &&
      !(tty->termios->c_cflag & CRTSCTS))
   tty->hw_stopped = 0;
 }
}
