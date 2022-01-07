
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct bfin_serial_port {int dummy; } ;


 unsigned short TEMT ;
 unsigned int TIOCSER_TEMT ;
 unsigned short UART_GET_LSR (struct bfin_serial_port*) ;

__attribute__((used)) static unsigned int bfin_serial_tx_empty(struct uart_port *port)
{
 struct bfin_serial_port *uart = (struct bfin_serial_port *)port;
 unsigned short lsr;

 lsr = UART_GET_LSR(uart);
 if (lsr & TEMT)
  return TIOCSER_TEMT;
 else
  return 0;
}
