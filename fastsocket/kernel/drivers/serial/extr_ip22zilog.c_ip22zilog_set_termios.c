
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {int lock; } ;
struct uart_ip22zilog_port {TYPE_1__ port; int flags; } ;
struct ktermios {int c_cflag; int c_iflag; } ;


 int BPS_TO_BRG (int,int) ;
 int IP22ZILOG_FLAG_MODEM_STATUS ;
 scalar_t__ UART_ENABLE_MS (TYPE_1__*,int ) ;
 int ZILOG_CHANNEL_FROM_PORT (struct uart_port*) ;
 int ZS_CLOCK ;
 int ZS_CLOCK_DIVISOR ;
 int ip22zilog_convert_to_zs (struct uart_ip22zilog_port*,int ,int ,int) ;
 int ip22zilog_maybe_update_regs (struct uart_ip22zilog_port*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int,int) ;
 int uart_update_timeout (struct uart_port*,int ,int) ;

__attribute__((used)) static void
ip22zilog_set_termios(struct uart_port *port, struct ktermios *termios,
        struct ktermios *old)
{
 struct uart_ip22zilog_port *up = (struct uart_ip22zilog_port *) port;
 unsigned long flags;
 int baud, brg;

 baud = uart_get_baud_rate(port, termios, old, 1200, 76800);

 spin_lock_irqsave(&up->port.lock, flags);

 brg = BPS_TO_BRG(baud, ZS_CLOCK / ZS_CLOCK_DIVISOR);

 ip22zilog_convert_to_zs(up, termios->c_cflag, termios->c_iflag, brg);

 if (UART_ENABLE_MS(&up->port, termios->c_cflag))
  up->flags |= IP22ZILOG_FLAG_MODEM_STATUS;
 else
  up->flags &= ~IP22ZILOG_FLAG_MODEM_STATUS;

 ip22zilog_maybe_update_regs(up, ZILOG_CHANNEL_FROM_PORT(port));
 uart_update_timeout(port, termios->c_cflag, baud);

 spin_unlock_irqrestore(&up->port.lock, flags);
}
