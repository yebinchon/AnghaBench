
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int work; } ;
struct tty_struct {int ldisc_mutex; TYPE_3__ buf; TYPE_2__* ops; struct tty_ldisc* ldisc; int flags; scalar_t__ receive_room; struct tty_struct* link; } ;
struct tty_ldisc {TYPE_1__* ops; } ;
struct TYPE_5__ {int (* set_ldisc ) (struct tty_struct*) ;} ;
struct TYPE_4__ {int num; } ;


 int EIO ;
 scalar_t__ IS_ERR (struct tty_ldisc*) ;
 int PTR_ERR (struct tty_ldisc*) ;
 int TTY_HUPPED ;
 int TTY_LDISC_CHANGING ;
 int clear_bit (int ,int *) ;
 int flush_scheduled_work () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_delayed_work (int *,int) ;
 int set_bit (int ,int *) ;
 int stub1 (struct tty_struct*) ;
 scalar_t__ test_bit (int ,int *) ;
 int tty_ldisc_assign (struct tty_struct*,struct tty_ldisc*) ;
 int tty_ldisc_close (struct tty_struct*,struct tty_ldisc*) ;
 int tty_ldisc_enable (struct tty_struct*) ;
 struct tty_ldisc* tty_ldisc_get (int) ;
 int tty_ldisc_halt (struct tty_struct*) ;
 int tty_ldisc_open (struct tty_struct*,struct tty_ldisc*) ;
 int tty_ldisc_put (struct tty_ldisc*) ;
 int tty_ldisc_restore (struct tty_struct*,struct tty_ldisc*) ;
 int tty_ldisc_wait ;
 int tty_set_termios_ldisc (struct tty_struct*,int) ;
 int tty_wait_until_sent (struct tty_struct*,int ) ;
 int wait_event (int ,int) ;

int tty_set_ldisc(struct tty_struct *tty, int ldisc)
{
 int retval;
 struct tty_ldisc *o_ldisc, *new_ldisc;
 int work, o_work = 0;
 struct tty_struct *o_tty;

 new_ldisc = tty_ldisc_get(ldisc);
 if (IS_ERR(new_ldisc))
  return PTR_ERR(new_ldisc);






 o_tty = tty->link;






 if (tty->ldisc->ops->num == ldisc) {
  tty_ldisc_put(new_ldisc);
  return 0;
 }






 tty_wait_until_sent(tty, 0);

 mutex_lock(&tty->ldisc_mutex);






 while (test_bit(TTY_LDISC_CHANGING, &tty->flags)) {
  mutex_unlock(&tty->ldisc_mutex);
  wait_event(tty_ldisc_wait,
   test_bit(TTY_LDISC_CHANGING, &tty->flags) == 0);
  mutex_lock(&tty->ldisc_mutex);
 }
 set_bit(TTY_LDISC_CHANGING, &tty->flags);






 tty->receive_room = 0;

 o_ldisc = tty->ldisc;
 work = tty_ldisc_halt(tty);
 if (o_tty)
  o_work = tty_ldisc_halt(o_tty);






 mutex_unlock(&tty->ldisc_mutex);

 flush_scheduled_work();

 mutex_lock(&tty->ldisc_mutex);
 if (test_bit(TTY_HUPPED, &tty->flags)) {


  clear_bit(TTY_LDISC_CHANGING, &tty->flags);
  mutex_unlock(&tty->ldisc_mutex);
  tty_ldisc_put(new_ldisc);
  return -EIO;
 }


 tty_ldisc_close(tty, o_ldisc);


 tty_ldisc_assign(tty, new_ldisc);
 tty_set_termios_ldisc(tty, ldisc);

 retval = tty_ldisc_open(tty, new_ldisc);
 if (retval < 0) {

  tty_ldisc_put(new_ldisc);
  tty_ldisc_restore(tty, o_ldisc);
 }





 if (tty->ldisc->ops->num != o_ldisc->ops->num && tty->ops->set_ldisc)
  tty->ops->set_ldisc(tty);

 tty_ldisc_put(o_ldisc);





 tty_ldisc_enable(tty);
 if (o_tty)
  tty_ldisc_enable(o_tty);



 if (work)
  schedule_delayed_work(&tty->buf.work, 1);
 if (o_work)
  schedule_delayed_work(&o_tty->buf.work, 1);
 mutex_unlock(&tty->ldisc_mutex);
 return retval;
}
