
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int flags; struct tty3270* driver_data; } ;
struct tty3270 {int kbd; } ;
struct file {int dummy; } ;


 int EIO ;
 int ENODEV ;
 int TTY_IO_ERROR ;
 int kbd_ioctl (int ,struct file*,unsigned int,unsigned long) ;

__attribute__((used)) static int
tty3270_ioctl(struct tty_struct *tty, struct file *file,
       unsigned int cmd, unsigned long arg)
{
 struct tty3270 *tp;

 tp = tty->driver_data;
 if (!tp)
  return -ENODEV;
 if (tty->flags & (1 << TTY_IO_ERROR))
  return -EIO;
 return kbd_ioctl(tp->kbd, file, cmd, arg);
}
