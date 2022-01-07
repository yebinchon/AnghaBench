
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int ldisc; int flags; } ;
struct tty_ldisc {int dummy; } ;


 int TTY_LDISC ;
 struct tty_ldisc* get_ldisc (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;
 int tty_ldisc_lock ;

__attribute__((used)) static struct tty_ldisc *tty_ldisc_try(struct tty_struct *tty)
{
 unsigned long flags;
 struct tty_ldisc *ld;

 spin_lock_irqsave(&tty_ldisc_lock, flags);
 ld = ((void*)0);
 if (test_bit(TTY_LDISC, &tty->flags))
  ld = get_ldisc(tty->ldisc);
 spin_unlock_irqrestore(&tty_ldisc_lock, flags);
 return ld;
}
