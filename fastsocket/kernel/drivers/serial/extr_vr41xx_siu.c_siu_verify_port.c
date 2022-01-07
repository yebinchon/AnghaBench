
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ type; scalar_t__ irq; scalar_t__ iotype; unsigned long mapbase; } ;
struct serial_struct {scalar_t__ irq; scalar_t__ io_type; scalar_t__ iomem_base; } ;


 int EINVAL ;
 scalar_t__ PORT_VR41XX_DSIU ;
 scalar_t__ PORT_VR41XX_SIU ;

__attribute__((used)) static int siu_verify_port(struct uart_port *port, struct serial_struct *serial)
{
 if (port->type != PORT_VR41XX_SIU && port->type != PORT_VR41XX_DSIU)
  return -EINVAL;
 if (port->irq != serial->irq)
  return -EINVAL;
 if (port->iotype != serial->io_type)
  return -EINVAL;
 if (port->mapbase != (unsigned long)serial->iomem_base)
  return -EINVAL;

 return 0;
}
