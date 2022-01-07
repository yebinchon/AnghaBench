
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int name; scalar_t__ driver_data; } ;
struct m68k_serial {int x_char; } ;


 scalar_t__ I_IXOFF (struct tty_struct*) ;
 int STOP_CHAR (struct tty_struct*) ;
 scalar_t__ serial_paranoia_check (struct m68k_serial*,int ,char*) ;

__attribute__((used)) static void rs_throttle(struct tty_struct * tty)
{
 struct m68k_serial *info = (struct m68k_serial *)tty->driver_data;

 if (serial_paranoia_check(info, tty->name, "rs_throttle"))
  return;

 if (I_IXOFF(tty))
  info->x_char = STOP_CHAR(tty);


}
