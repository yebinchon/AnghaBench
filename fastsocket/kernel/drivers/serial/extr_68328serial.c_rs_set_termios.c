
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {scalar_t__ hw_stopped; TYPE_1__* termios; scalar_t__ driver_data; } ;
struct m68k_serial {int dummy; } ;
struct ktermios {int c_cflag; } ;
struct TYPE_2__ {int c_cflag; } ;


 int CRTSCTS ;
 int change_speed (struct m68k_serial*) ;
 int rs_start (struct tty_struct*) ;

__attribute__((used)) static void rs_set_termios(struct tty_struct *tty, struct ktermios *old_termios)
{
 struct m68k_serial *info = (struct m68k_serial *)tty->driver_data;

 change_speed(info);

 if ((old_termios->c_cflag & CRTSCTS) &&
     !(tty->termios->c_cflag & CRTSCTS)) {
  tty->hw_stopped = 0;
  rs_start(tty);
 }

}
