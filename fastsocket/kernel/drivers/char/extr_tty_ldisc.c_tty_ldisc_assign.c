
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct tty_ldisc* ldisc; } ;
struct tty_ldisc {int dummy; } ;



__attribute__((used)) static void tty_ldisc_assign(struct tty_struct *tty, struct tty_ldisc *ld)
{
 tty->ldisc = ld;
}
