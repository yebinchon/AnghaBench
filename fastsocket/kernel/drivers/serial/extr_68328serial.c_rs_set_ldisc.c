
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {TYPE_1__* termios; int name; scalar_t__ driver_data; } ;
struct m68k_serial {int is_cons; int line; } ;
struct TYPE_2__ {scalar_t__ c_line; } ;


 scalar_t__ N_TTY ;
 int printk (char*,int ,char*) ;
 scalar_t__ serial_paranoia_check (struct m68k_serial*,int ,char*) ;

__attribute__((used)) static void rs_set_ldisc(struct tty_struct *tty)
{
 struct m68k_serial *info = (struct m68k_serial *)tty->driver_data;

 if (serial_paranoia_check(info, tty->name, "rs_set_ldisc"))
  return;

 info->is_cons = (tty->termios->c_line == N_TTY);

 printk("ttyS%d console mode %s\n", info->line, info->is_cons ? "on" : "off");
}
