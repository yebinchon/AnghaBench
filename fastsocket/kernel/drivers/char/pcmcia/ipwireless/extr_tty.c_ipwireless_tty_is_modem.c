
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_tty {scalar_t__ tty_type; } ;


 scalar_t__ TTYTYPE_MODEM ;

int ipwireless_tty_is_modem(struct ipw_tty *tty)
{
 return tty->tty_type == TTYTYPE_MODEM;
}
