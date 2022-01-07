
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct tty_ldisc {int dummy; } ;


 scalar_t__ IS_ERR (struct tty_ldisc*) ;
 int N_TTY ;
 int panic (char*) ;
 int tty_ldisc_assign (struct tty_struct*,struct tty_ldisc*) ;
 struct tty_ldisc* tty_ldisc_get (int ) ;

void tty_ldisc_init(struct tty_struct *tty)
{
 struct tty_ldisc *ld = tty_ldisc_get(N_TTY);
 if (IS_ERR(ld))
  panic("n_tty: init_tty");
 tty_ldisc_assign(tty, ld);
}
