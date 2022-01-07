
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_8250_port {int dummy; } ;


 int UART_ICR ;
 int UART_SCR ;
 int serial_out (struct uart_8250_port*,int ,int) ;

__attribute__((used)) static void serial_icr_write(struct uart_8250_port *up, int offset, int value)
{
 serial_out(up, UART_SCR, offset);
 serial_out(up, UART_ICR, value);
}
