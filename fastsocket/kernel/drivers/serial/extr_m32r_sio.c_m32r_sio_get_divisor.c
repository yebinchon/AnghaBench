
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 unsigned int uart_get_divisor (struct uart_port*,unsigned int) ;

__attribute__((used)) static unsigned int m32r_sio_get_divisor(struct uart_port *port,
 unsigned int baud)
{
 return uart_get_divisor(port, baud);
}
