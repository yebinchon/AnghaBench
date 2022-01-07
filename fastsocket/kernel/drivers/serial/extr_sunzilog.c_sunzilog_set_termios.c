
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct uart_sunzilog_port {TYPE_1__ port; int cflag; int flags; } ;
struct uart_port {int dummy; } ;
struct ktermios {int c_cflag; int c_iflag; } ;


 int BPS_TO_BRG (int,int) ;
 int SUNZILOG_FLAG_MODEM_STATUS ;
 scalar_t__ UART_ENABLE_MS (TYPE_1__*,int ) ;
 int ZILOG_CHANNEL_FROM_PORT (struct uart_port*) ;
 int ZS_CLOCK ;
 int ZS_CLOCK_DIVISOR ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sunzilog_convert_to_zs (struct uart_sunzilog_port*,int ,int ,int) ;
 int sunzilog_maybe_update_regs (struct uart_sunzilog_port*,int ) ;
 int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int,int) ;
 int uart_update_timeout (struct uart_port*,int ,int) ;

__attribute__((used)) static void
sunzilog_set_termios(struct uart_port *port, struct ktermios *termios,
       struct ktermios *old)
{
 struct uart_sunzilog_port *up = (struct uart_sunzilog_port *) port;
 unsigned long flags;
 int baud, brg;

 baud = uart_get_baud_rate(port, termios, old, 1200, 76800);

 spin_lock_irqsave(&up->port.lock, flags);

 brg = BPS_TO_BRG(baud, ZS_CLOCK / ZS_CLOCK_DIVISOR);

 sunzilog_convert_to_zs(up, termios->c_cflag, termios->c_iflag, brg);

 if (UART_ENABLE_MS(&up->port, termios->c_cflag))
  up->flags |= SUNZILOG_FLAG_MODEM_STATUS;
 else
  up->flags &= ~SUNZILOG_FLAG_MODEM_STATUS;

 up->cflag = termios->c_cflag;

 sunzilog_maybe_update_regs(up, ZILOG_CHANNEL_FROM_PORT(port));

 uart_update_timeout(port, termios->c_cflag, baud);

 spin_unlock_irqrestore(&up->port.lock, flags);
}
