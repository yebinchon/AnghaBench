
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int flags; unsigned int custom_divisor; int uartclk; } ;


 int UPF_SPD_CUST ;
 int UPF_SPD_MASK ;

unsigned int
uart_get_divisor(struct uart_port *port, unsigned int baud)
{
 unsigned int quot;




 if (baud == 38400 && (port->flags & UPF_SPD_MASK) == UPF_SPD_CUST)
  quot = port->custom_divisor;
 else
  quot = (port->uartclk + (8 * baud)) / (16 * baud);

 return quot;
}
