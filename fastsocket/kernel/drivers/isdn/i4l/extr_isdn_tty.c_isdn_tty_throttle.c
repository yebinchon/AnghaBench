
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {int name; scalar_t__ driver_data; } ;
struct TYPE_3__ {int mcr; int x_char; } ;
typedef TYPE_1__ modem_info ;


 scalar_t__ I_IXOFF (struct tty_struct*) ;
 int STOP_CHAR (struct tty_struct*) ;
 int UART_MCR_RTS ;
 scalar_t__ isdn_tty_paranoia_check (TYPE_1__*,int ,char*) ;

__attribute__((used)) static void
isdn_tty_throttle(struct tty_struct *tty)
{
 modem_info *info = (modem_info *) tty->driver_data;

 if (isdn_tty_paranoia_check(info, tty->name, "isdn_tty_throttle"))
  return;
 if (I_IXOFF(tty))
  info->x_char = STOP_CHAR(tty);
 info->mcr &= ~UART_MCR_RTS;
}
