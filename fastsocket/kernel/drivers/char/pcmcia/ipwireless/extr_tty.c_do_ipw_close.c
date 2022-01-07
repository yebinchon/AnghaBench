
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int * driver_data; } ;
struct ipw_tty {scalar_t__ open_count; scalar_t__ tty_type; int network; struct tty_struct* linux_tty; } ;


 scalar_t__ TTYTYPE_MODEM ;
 int ipwireless_ppp_close (int ) ;

__attribute__((used)) static void do_ipw_close(struct ipw_tty *tty)
{
 tty->open_count--;

 if (tty->open_count == 0) {
  struct tty_struct *linux_tty = tty->linux_tty;

  if (linux_tty != ((void*)0)) {
   tty->linux_tty = ((void*)0);
   linux_tty->driver_data = ((void*)0);

   if (tty->tty_type == TTYTYPE_MODEM)
    ipwireless_ppp_close(tty->network);
  }
 }
}
