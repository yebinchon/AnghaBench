
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {scalar_t__ flow_change; int termios_mutex; TYPE_1__* ops; int flags; } ;
struct TYPE_2__ {int (* unthrottle ) (struct tty_struct*) ;} ;


 int TTY_THROTTLED ;
 scalar_t__ TTY_UNTHROTTLE_SAFE ;
 int __clear_bit (int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct tty_struct*) ;
 scalar_t__ test_bit (int ,int *) ;

int tty_unthrottle_safe(struct tty_struct *tty)
{
 int ret = 0;

 mutex_lock(&tty->termios_mutex);
 if (test_bit(TTY_THROTTLED, &tty->flags)) {
  if (tty->flow_change != TTY_UNTHROTTLE_SAFE)
   ret = 1;
  else {
   __clear_bit(TTY_THROTTLED, &tty->flags);
   if (tty->ops->unthrottle)
    tty->ops->unthrottle(tty);
  }
 }
 mutex_unlock(&tty->termios_mutex);

 return ret;
}
