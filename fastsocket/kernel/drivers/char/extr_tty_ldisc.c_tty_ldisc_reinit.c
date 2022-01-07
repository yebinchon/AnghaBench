
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int * ldisc; } ;
struct tty_ldisc {int dummy; } ;


 scalar_t__ IS_ERR (struct tty_ldisc*) ;
 int tty_ldisc_assign (struct tty_struct*,struct tty_ldisc*) ;
 int tty_ldisc_close (struct tty_struct*,int *) ;
 struct tty_ldisc* tty_ldisc_get (int) ;
 int tty_ldisc_put (int *) ;
 int tty_set_termios_ldisc (struct tty_struct*,int) ;

__attribute__((used)) static int tty_ldisc_reinit(struct tty_struct *tty, int ldisc)
{
 struct tty_ldisc *ld = tty_ldisc_get(ldisc);

 if (IS_ERR(ld))
  return -1;

 tty_ldisc_close(tty, tty->ldisc);
 tty_ldisc_put(tty->ldisc);
 tty->ldisc = ((void*)0);



 tty_ldisc_assign(tty, ld);
 tty_set_termios_ldisc(tty, ldisc);

 return 0;
}
