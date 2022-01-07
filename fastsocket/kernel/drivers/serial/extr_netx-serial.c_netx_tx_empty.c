
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ membase; } ;


 int FR_BUSY ;
 unsigned int TIOCSER_TEMT ;
 scalar_t__ UART_FR ;
 int readl (scalar_t__) ;

__attribute__((used)) static unsigned int netx_tx_empty(struct uart_port *port)
{
 return readl(port->membase + UART_FR) & FR_BUSY ? 0 : TIOCSER_TEMT;
}
