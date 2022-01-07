
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tty_struct {int ldisc_mutex; scalar_t__ ldisc; TYPE_3__* termios; int read_wait; int write_wait; int flags; TYPE_1__* driver; } ;
struct tty_ldisc {TYPE_2__* ops; } ;
struct TYPE_6__ {int c_line; } ;
struct TYPE_5__ {int (* hangup ) (struct tty_struct*) ;int (* write_wakeup ) (struct tty_struct*) ;int (* flush_buffer ) (struct tty_struct*) ;} ;
struct TYPE_4__ {int flags; } ;


 int BUG_ON (int ) ;
 int N_TTY ;
 int POLLIN ;
 int POLLOUT ;
 int TTY_DO_WRITE_WAKEUP ;
 int TTY_DRIVER_RESET_TERMIOS ;
 int WARN_ON (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct tty_struct*) ;
 int stub2 (struct tty_struct*) ;
 int stub3 (struct tty_struct*) ;
 scalar_t__ test_bit (int ,int *) ;
 int tty_driver_flush_buffer (struct tty_struct*) ;
 int tty_ldisc_deref (struct tty_ldisc*) ;
 int tty_ldisc_enable (struct tty_struct*) ;
 int tty_ldisc_halt (struct tty_struct*) ;
 int tty_ldisc_open (struct tty_struct*,scalar_t__) ;
 struct tty_ldisc* tty_ldisc_ref (struct tty_struct*) ;
 int tty_ldisc_reinit (struct tty_struct*,int ) ;
 int tty_reset_termios (struct tty_struct*) ;
 int wake_up_interruptible_poll (int *,int ) ;

void tty_ldisc_hangup(struct tty_struct *tty)
{
 struct tty_ldisc *ld;
 int reset = tty->driver->flags & TTY_DRIVER_RESET_TERMIOS;
 int err = 0;






 ld = tty_ldisc_ref(tty);
 if (ld != ((void*)0)) {

  if (ld->ops->flush_buffer)
   ld->ops->flush_buffer(tty);
  tty_driver_flush_buffer(tty);
  if ((test_bit(TTY_DO_WRITE_WAKEUP, &tty->flags)) &&
      ld->ops->write_wakeup)
   ld->ops->write_wakeup(tty);
  if (ld->ops->hangup)
   ld->ops->hangup(tty);
  tty_ldisc_deref(ld);
 }




 wake_up_interruptible_poll(&tty->write_wait, POLLOUT);
 wake_up_interruptible_poll(&tty->read_wait, POLLIN);






 mutex_lock(&tty->ldisc_mutex);
 tty_ldisc_halt(tty);




 if (tty->ldisc) {
  if (reset == 0) {

   if (!tty_ldisc_reinit(tty, tty->termios->c_line))
    err = tty_ldisc_open(tty, tty->ldisc);
   else
    err = 1;
  }


  if (reset || err) {
   BUG_ON(tty_ldisc_reinit(tty, N_TTY));
   WARN_ON(tty_ldisc_open(tty, tty->ldisc));
  }
  tty_ldisc_enable(tty);
 }
 mutex_unlock(&tty->ldisc_mutex);
 if (reset)
  tty_reset_termios(tty);
}
