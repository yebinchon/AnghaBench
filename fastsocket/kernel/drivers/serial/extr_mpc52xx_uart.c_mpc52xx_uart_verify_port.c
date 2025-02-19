
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ irq; scalar_t__ uartclk; scalar_t__ mapbase; } ;
struct serial_struct {scalar_t__ type; scalar_t__ irq; scalar_t__ io_type; scalar_t__ baud_base; void* iomem_base; scalar_t__ hub6; } ;


 int EINVAL ;
 scalar_t__ PORT_MPC52xx ;
 scalar_t__ PORT_UNKNOWN ;
 scalar_t__ UPIO_MEM ;

__attribute__((used)) static int
mpc52xx_uart_verify_port(struct uart_port *port, struct serial_struct *ser)
{
 if (ser->type != PORT_UNKNOWN && ser->type != PORT_MPC52xx)
  return -EINVAL;

 if ((ser->irq != port->irq) ||
     (ser->io_type != UPIO_MEM) ||
     (ser->baud_base != port->uartclk) ||
     (ser->iomem_base != (void *)port->mapbase) ||
     (ser->hub6 != 0))
  return -EINVAL;

 return 0;
}
