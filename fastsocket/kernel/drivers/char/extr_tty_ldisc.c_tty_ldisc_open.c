
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int flags; } ;
struct tty_ldisc {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* open ) (struct tty_struct*) ;} ;


 int TTY_LDISC_OPEN ;
 int WARN_ON (int ) ;
 int stub1 (struct tty_struct*) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static int tty_ldisc_open(struct tty_struct *tty, struct tty_ldisc *ld)
{
 WARN_ON(test_and_set_bit(TTY_LDISC_OPEN, &tty->flags));
 if (ld->ops->open)
  return ld->ops->open(tty);
 return 0;
}
