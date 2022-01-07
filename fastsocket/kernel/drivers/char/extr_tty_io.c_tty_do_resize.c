
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winsize {int dummy; } ;
struct tty_struct {int termios_mutex; struct winsize winsize; int ctrl_lock; int pgrp; } ;
struct pid {int dummy; } ;


 int SIGWINCH ;
 struct pid* get_pid (int ) ;
 int kill_pgrp (struct pid*,int ,int) ;
 int memcmp (struct winsize*,struct winsize*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_pid (struct pid*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int tty_do_resize(struct tty_struct *tty, struct winsize *ws)
{
 struct pid *pgrp;
 unsigned long flags;


 mutex_lock(&tty->termios_mutex);
 if (!memcmp(ws, &tty->winsize, sizeof(*ws)))
  goto done;


 spin_lock_irqsave(&tty->ctrl_lock, flags);
 pgrp = get_pid(tty->pgrp);
 spin_unlock_irqrestore(&tty->ctrl_lock, flags);

 if (pgrp)
  kill_pgrp(pgrp, SIGWINCH, 1);
 put_pid(pgrp);

 tty->winsize = *ws;
done:
 mutex_unlock(&tty->termios_mutex);
 return 0;
}
