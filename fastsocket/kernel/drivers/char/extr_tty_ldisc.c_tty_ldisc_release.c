
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int ldisc_mutex; int * ldisc; } ;


 int N_TTY ;
 int flush_scheduled_work () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tty_ldisc_close (struct tty_struct*,int *) ;
 int tty_ldisc_halt (struct tty_struct*) ;
 int tty_ldisc_put (int *) ;
 int tty_set_termios_ldisc (struct tty_struct*,int ) ;

void tty_ldisc_release(struct tty_struct *tty, struct tty_struct *o_tty)
{






 tty_ldisc_halt(tty);
 flush_scheduled_work();

 mutex_lock(&tty->ldisc_mutex);



 tty_ldisc_close(tty, tty->ldisc);
 tty_ldisc_put(tty->ldisc);

 tty->ldisc = ((void*)0);


 tty_set_termios_ldisc(tty, N_TTY);
 mutex_unlock(&tty->ldisc_mutex);


 if (o_tty)
  tty_ldisc_release(o_tty, ((void*)0));



}
