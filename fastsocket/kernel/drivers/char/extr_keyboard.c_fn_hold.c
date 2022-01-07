
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {struct tty_struct* vc_tty; } ;
struct tty_struct {scalar_t__ stopped; } ;


 scalar_t__ rep ;
 int start_tty (struct tty_struct*) ;
 int stop_tty (struct tty_struct*) ;

__attribute__((used)) static void fn_hold(struct vc_data *vc)
{
 struct tty_struct *tty = vc->vc_tty;

 if (rep || !tty)
  return;






 if (tty->stopped)
  start_tty(tty);
 else
  stop_tty(tty);
}
