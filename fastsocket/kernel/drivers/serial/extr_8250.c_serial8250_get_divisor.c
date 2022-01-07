
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int flags; int uartclk; scalar_t__ type; } ;


 scalar_t__ PORT_16C950 ;
 int UPF_MAGIC_MULTIPLIER ;
 unsigned int uart_get_divisor (struct uart_port*,unsigned int) ;

__attribute__((used)) static unsigned int serial8250_get_divisor(struct uart_port *port, unsigned int baud)
{
 unsigned int quot;





 if ((port->flags & UPF_MAGIC_MULTIPLIER) &&
     baud == (port->uartclk/4))
  quot = 0x8001;
 else if ((port->flags & UPF_MAGIC_MULTIPLIER) &&
   baud == (port->uartclk/8))
  quot = 0x8002;




 else if ((port->type == PORT_16C950) &&
   baud > (port->uartclk/16))
  quot = 1;

 else
  quot = uart_get_divisor(port, baud);

 return quot;
}
