
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct uart_port {int dummy; } ;
struct bfin_serial_port {int dummy; } ;


 int SB ;
 int SSYNC () ;
 int UART_GET_LCR (struct bfin_serial_port*) ;
 int UART_PUT_LCR (struct bfin_serial_port*,int ) ;

__attribute__((used)) static void bfin_serial_break_ctl(struct uart_port *port, int break_state)
{
 struct bfin_serial_port *uart = (struct bfin_serial_port *)port;
 u16 lcr = UART_GET_LCR(uart);
 if (break_state)
  lcr |= SB;
 else
  lcr &= ~SB;
 UART_PUT_LCR(uart, lcr);
 SSYNC();
}
