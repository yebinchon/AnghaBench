
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct tty_ldisc* ldisc; } ;
struct tty_ldisc {int dummy; } ;


 int tty_ldisc_close (struct tty_struct*,struct tty_ldisc*) ;
 int tty_ldisc_enable (struct tty_struct*) ;
 int tty_ldisc_open (struct tty_struct*,struct tty_ldisc*) ;

int tty_ldisc_setup(struct tty_struct *tty, struct tty_struct *o_tty)
{
 struct tty_ldisc *ld = tty->ldisc;
 int retval;

 retval = tty_ldisc_open(tty, ld);
 if (retval)
  return retval;

 if (o_tty) {
  retval = tty_ldisc_open(o_tty, o_tty->ldisc);
  if (retval) {
   tty_ldisc_close(tty, ld);
   return retval;
  }
  tty_ldisc_enable(o_tty);
 }
 tty_ldisc_enable(tty);
 return 0;
}
