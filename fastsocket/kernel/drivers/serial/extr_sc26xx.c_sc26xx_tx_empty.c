
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int READ_SC_PORT (struct uart_port*,int ) ;
 int SR ;
 int SR_TXRDY ;
 unsigned int TIOCSER_TEMT ;

__attribute__((used)) static unsigned int sc26xx_tx_empty(struct uart_port *port)
{
 return (READ_SC_PORT(port, SR) & SR_TXRDY) ? TIOCSER_TEMT : 0;
}
