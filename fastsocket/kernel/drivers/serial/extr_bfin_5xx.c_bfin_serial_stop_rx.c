
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct bfin_serial_port {int dummy; } ;


 int ERBFI ;
 int UART_CLEAR_IER (struct bfin_serial_port*,int ) ;

__attribute__((used)) static void bfin_serial_stop_rx(struct uart_port *port)
{
 struct bfin_serial_port *uart = (struct bfin_serial_port *)port;

 UART_CLEAR_IER(uart, ERBFI);
}
