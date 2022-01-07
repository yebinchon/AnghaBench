
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {int name; scalar_t__ driver_data; } ;
struct TYPE_3__ {int mcr; scalar_t__ x_char; } ;
typedef TYPE_1__ modem_info ;


 scalar_t__ I_IXOFF (struct tty_struct*) ;
 scalar_t__ START_CHAR (struct tty_struct*) ;
 int UART_MCR_RTS ;
 scalar_t__ isdn_tty_paranoia_check (TYPE_1__*,int ,char*) ;

__attribute__((used)) static void
isdn_tty_unthrottle(struct tty_struct *tty)
{
 modem_info *info = (modem_info *) tty->driver_data;

 if (isdn_tty_paranoia_check(info, tty->name, "isdn_tty_unthrottle"))
  return;
 if (I_IXOFF(tty)) {
  if (info->x_char)
   info->x_char = 0;
  else
   info->x_char = START_CHAR(tty);
 }
 info->mcr |= UART_MCR_RTS;
}
