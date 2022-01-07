
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct tty_ldisc {int dummy; } ;


 struct tty_ldisc* tty_ldisc_try (struct tty_struct*) ;

struct tty_ldisc *tty_ldisc_ref(struct tty_struct *tty)
{
 return tty_ldisc_try(tty);
}
