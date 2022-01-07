
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int ldisc_mutex; int flags; struct tty_driver* driver; scalar_t__ count; TYPE_1__* link; } ;
struct tty_driver {scalar_t__ type; scalar_t__ subtype; } ;
struct TYPE_2__ {int count; } ;


 int EIO ;
 scalar_t__ PTY_TYPE_MASTER ;
 int TTY_CLOSING ;
 scalar_t__ TTY_DRIVER_TYPE_PTY ;
 int TTY_LDISC ;
 int WARN_ON (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int tty_reopen(struct tty_struct *tty)
{
 struct tty_driver *driver = tty->driver;

 if (test_bit(TTY_CLOSING, &tty->flags))
  return -EIO;

 if (driver->type == TTY_DRIVER_TYPE_PTY &&
     driver->subtype == PTY_TYPE_MASTER) {




  if (tty->count)
   return -EIO;

  tty->link->count++;
 }
 tty->count++;
 tty->driver = driver;

 mutex_lock(&tty->ldisc_mutex);
 WARN_ON(!test_bit(TTY_LDISC, &tty->flags));
 mutex_unlock(&tty->ldisc_mutex);

 return 0;
}
