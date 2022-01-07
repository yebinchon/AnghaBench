
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {scalar_t__ membase; } ;
struct uart_amba_port {TYPE_1__ port; } ;


 unsigned int TIOCSER_TEMT ;
 scalar_t__ UART01x_FR ;
 unsigned int UART01x_FR_BUSY ;
 unsigned int UART01x_FR_TXFF ;
 unsigned int readw (scalar_t__) ;

__attribute__((used)) static unsigned int pl01x_tx_empty(struct uart_port *port)
{
 struct uart_amba_port *uap = (struct uart_amba_port *)port;
 unsigned int status = readw(uap->port.membase + UART01x_FR);
 return status & (UART01x_FR_BUSY|UART01x_FR_TXFF) ? 0 : TIOCSER_TEMT;
}
