
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct tty_ldisc {int dummy; } ;


 struct tty_ldisc* tty_ldisc_try (struct tty_struct*) ;
 int tty_ldisc_wait ;
 int wait_event (int ,int ) ;

struct tty_ldisc *tty_ldisc_ref_wait(struct tty_struct *tty)
{
 struct tty_ldisc *ld;


 wait_event(tty_ldisc_wait, (ld = tty_ldisc_try(tty)) != ((void*)0));
 return ld;
}
