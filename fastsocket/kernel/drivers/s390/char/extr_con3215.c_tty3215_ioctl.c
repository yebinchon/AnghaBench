
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int flags; } ;
struct file {int dummy; } ;


 int EIO ;
 int ENOIOCTLCMD ;
 int TTY_IO_ERROR ;

__attribute__((used)) static int tty3215_ioctl(struct tty_struct *tty, struct file * file,
    unsigned int cmd, unsigned long arg)
{
 if (tty->flags & (1 << TTY_IO_ERROR))
  return -EIO;

 switch (cmd) {
 default:
  return -ENOIOCTLCMD;
 }
 return 0;
}
