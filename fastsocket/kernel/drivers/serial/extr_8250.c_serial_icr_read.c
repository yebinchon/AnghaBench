
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_8250_port {int acr; } ;


 int UART_ACR ;
 int UART_ACR_ICRRD ;
 int UART_ICR ;
 int UART_SCR ;
 int serial_icr_write (struct uart_8250_port*,int ,int) ;
 unsigned int serial_in (struct uart_8250_port*,int ) ;
 int serial_out (struct uart_8250_port*,int ,int) ;

__attribute__((used)) static unsigned int serial_icr_read(struct uart_8250_port *up, int offset)
{
 unsigned int value;

 serial_icr_write(up, UART_ACR, up->acr | UART_ACR_ICRRD);
 serial_out(up, UART_SCR, offset);
 value = serial_in(up, UART_ICR);
 serial_icr_write(up, UART_ACR, up->acr);

 return value;
}
