
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int flags; TYPE_1__* link; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int count; int flags; } ;


 int EIO ;
 int ENODEV ;
 int TTY_OTHER_CLOSED ;
 int TTY_PTY_LOCK ;
 int TTY_THROTTLED ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int pty_open(struct tty_struct *tty, struct file *filp)
{
 int retval = -ENODEV;

 if (!tty || !tty->link)
  goto out;

 retval = -EIO;
 if (test_bit(TTY_OTHER_CLOSED, &tty->flags))
  goto out;
 if (test_bit(TTY_PTY_LOCK, &tty->link->flags))
  goto out;
 if (tty->link->count != 1)
  goto out;

 clear_bit(TTY_OTHER_CLOSED, &tty->link->flags);
 set_bit(TTY_THROTTLED, &tty->flags);
 retval = 0;
out:
 return retval;
}
