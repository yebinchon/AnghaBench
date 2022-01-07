
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* chars_in_buffer ) (struct tty_struct*) ;} ;
struct tty_struct {TYPE_1__* termios; int name; TYPE_2__ ldisc; struct async_struct* driver_data; } ;
struct async_struct {int MCR; scalar_t__ x_char; } ;
struct TYPE_3__ {int c_cflag; } ;


 int CRTSCTS ;
 scalar_t__ I_IXOFF (struct tty_struct*) ;
 int SER_RTS ;
 int START_CHAR (struct tty_struct*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int printk (char*,int ,int ) ;
 int rs_send_xchar (struct tty_struct*,int ) ;
 int rtsdtr_ctrl (int ) ;
 scalar_t__ serial_paranoia_check (struct async_struct*,int ,char*) ;
 int stub1 (struct tty_struct*) ;
 int tty_name (struct tty_struct*,char*) ;

__attribute__((used)) static void rs_unthrottle(struct tty_struct * tty)
{
 struct async_struct *info = tty->driver_data;
 unsigned long flags;







 if (serial_paranoia_check(info, tty->name, "rs_unthrottle"))
  return;

 if (I_IXOFF(tty)) {
  if (info->x_char)
   info->x_char = 0;
  else
   rs_send_xchar(tty, START_CHAR(tty));
 }
 if (tty->termios->c_cflag & CRTSCTS)
  info->MCR |= SER_RTS;
 local_irq_save(flags);
 rtsdtr_ctrl(info->MCR);
 local_irq_restore(flags);
}
