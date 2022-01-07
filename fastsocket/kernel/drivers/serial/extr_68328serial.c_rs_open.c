
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int index; struct m68k_serial* driver_data; int name; } ;
struct TYPE_2__ {struct tty_struct* tty; } ;
struct m68k_serial {TYPE_1__ port; int count; } ;
struct file {int dummy; } ;


 int ENODEV ;
 int NR_PORTS ;
 int block_til_ready (struct tty_struct*,struct file*,struct m68k_serial*) ;
 struct m68k_serial* m68k_soft ;
 scalar_t__ serial_paranoia_check (struct m68k_serial*,int ,char*) ;
 int startup (struct m68k_serial*) ;

int rs_open(struct tty_struct *tty, struct file * filp)
{
 struct m68k_serial *info;
 int retval, line;

 line = tty->index;

 if (line >= NR_PORTS || line < 0)
  return -ENODEV;

 info = &m68k_soft[line];

 if (serial_paranoia_check(info, tty->name, "rs_open"))
  return -ENODEV;

 info->count++;
 tty->driver_data = info;
 info->port.tty = tty;




 retval = startup(info);
 if (retval)
  return retval;

 return block_til_ready(tty, filp, info);
}
