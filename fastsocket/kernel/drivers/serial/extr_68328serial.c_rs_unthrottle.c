
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int name; scalar_t__ driver_data; } ;
struct m68k_serial {scalar_t__ x_char; } ;


 scalar_t__ I_IXOFF (struct tty_struct*) ;
 scalar_t__ START_CHAR (struct tty_struct*) ;
 scalar_t__ serial_paranoia_check (struct m68k_serial*,int ,char*) ;

__attribute__((used)) static void rs_unthrottle(struct tty_struct * tty)
{
 struct m68k_serial *info = (struct m68k_serial *)tty->driver_data;

 if (serial_paranoia_check(info, tty->name, "rs_unthrottle"))
  return;

 if (I_IXOFF(tty)) {
  if (info->x_char)
   info->x_char = 0;
  else
   info->x_char = START_CHAR(tty);
 }


}
