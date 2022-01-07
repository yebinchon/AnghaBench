
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct uart_port {int dummy; } ;


 int ATMEL_US_TXEMPTY ;
 int TIOCSER_TEMT ;
 int UART_GET_CSR (struct uart_port*) ;

__attribute__((used)) static u_int atmel_tx_empty(struct uart_port *port)
{
 return (UART_GET_CSR(port) & ATMEL_US_TXEMPTY) ? TIOCSER_TEMT : 0;
}
