
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 unsigned int TIOCSER_TEMT ;
 int UART_GET_LSR (struct uart_port*) ;
 int URLS_URTE ;

__attribute__((used)) static unsigned int ks8695uart_tx_empty(struct uart_port *port)
{
 return (UART_GET_LSR(port) & URLS_URTE) ? TIOCSER_TEMT : 0;
}
