
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int type; int uartclk; int fifosize; int flags; int line; int mapbase; int iotype; scalar_t__ regshift; int irq; } ;
struct resource {int start; } ;
struct TYPE_2__ {int* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;


 int IORESOURCE_MEM ;
 int PORT_UNKNOWN ;
 int SIU_BAUD_BASE ;
 int SIU_PORTS_MAX ;
 int UPF_BOOT_AUTOCONF ;
 int UPF_IOREMAP ;
 int UPIO_MEM ;
 int platform_get_irq (struct platform_device*,int) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 struct uart_port* siu_uart_ports ;

__attribute__((used)) static int siu_init_ports(struct platform_device *pdev)
{
 struct uart_port *port;
 struct resource *res;
 int *type = pdev->dev.platform_data;
 int i;

 if (!type)
  return 0;

 port = siu_uart_ports;
 for (i = 0; i < SIU_PORTS_MAX; i++) {
  port->type = type[i];
  if (port->type == PORT_UNKNOWN)
   continue;
  port->irq = platform_get_irq(pdev, i);
  port->uartclk = SIU_BAUD_BASE * 16;
  port->fifosize = 16;
  port->regshift = 0;
  port->iotype = UPIO_MEM;
  port->flags = UPF_IOREMAP | UPF_BOOT_AUTOCONF;
  port->line = i;
  res = platform_get_resource(pdev, IORESOURCE_MEM, i);
  port->mapbase = res->start;
  port++;
 }

 return i;
}
