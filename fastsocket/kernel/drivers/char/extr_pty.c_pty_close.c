
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tty_struct {int count; TYPE_1__* link; TYPE_2__* driver; int flags; scalar_t__ packet; int write_wait; int read_wait; } ;
struct file {int dummy; } ;
struct TYPE_5__ {scalar_t__ subtype; } ;
struct TYPE_4__ {int write_wait; int read_wait; int flags; scalar_t__ packet; } ;


 int BUG_ON (int) ;
 scalar_t__ PTY_TYPE_MASTER ;
 int TTY_OTHER_CLOSED ;
 int WARN_ON (int) ;
 int devpts_pty_kill (TYPE_1__*) ;
 TYPE_2__* ptm_driver ;
 int set_bit (int ,int *) ;
 int tty_vhangup (TYPE_1__*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void pty_close(struct tty_struct *tty, struct file *filp)
{
 BUG_ON(!tty);
 if (tty->driver->subtype == PTY_TYPE_MASTER)
  WARN_ON(tty->count > 1);
 else {
  if (tty->count > 2)
   return;
 }
 wake_up_interruptible(&tty->read_wait);
 wake_up_interruptible(&tty->write_wait);
 tty->packet = 0;
 if (!tty->link)
  return;
 tty->link->packet = 0;
 set_bit(TTY_OTHER_CLOSED, &tty->link->flags);
 wake_up_interruptible(&tty->link->read_wait);
 wake_up_interruptible(&tty->link->write_wait);
 if (tty->driver->subtype == PTY_TYPE_MASTER) {
  set_bit(TTY_OTHER_CLOSED, &tty->flags);




  tty_vhangup(tty->link);
 }
}
