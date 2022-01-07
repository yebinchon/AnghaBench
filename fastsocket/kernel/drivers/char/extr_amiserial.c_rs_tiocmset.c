
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int flags; int name; struct async_struct* driver_data; } ;
struct file {int dummy; } ;
struct async_struct {int MCR; } ;


 int EIO ;
 int ENODEV ;
 int SER_DTR ;
 int SER_RTS ;
 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_RTS ;
 int TTY_IO_ERROR ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int rtsdtr_ctrl (int ) ;
 scalar_t__ serial_paranoia_check (struct async_struct*,int ,char*) ;

__attribute__((used)) static int rs_tiocmset(struct tty_struct *tty, struct file *file,
         unsigned int set, unsigned int clear)
{
 struct async_struct * info = tty->driver_data;
 unsigned long flags;

 if (serial_paranoia_check(info, tty->name, "rs_ioctl"))
  return -ENODEV;
 if (tty->flags & (1 << TTY_IO_ERROR))
  return -EIO;

 local_irq_save(flags);
 if (set & TIOCM_RTS)
  info->MCR |= SER_RTS;
 if (set & TIOCM_DTR)
  info->MCR |= SER_DTR;
 if (clear & TIOCM_RTS)
  info->MCR &= ~SER_RTS;
 if (clear & TIOCM_DTR)
  info->MCR &= ~SER_DTR;
 rtsdtr_ctrl(info->MCR);
 local_irq_restore(flags);
 return 0;
}
