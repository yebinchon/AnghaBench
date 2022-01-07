
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct resource {int flags; scalar_t__ start; } ;
struct platform_device {int num_resources; int dev; struct resource* resource; } ;
struct TYPE_4__ {scalar_t__ mapbase; int * dev; } ;
struct TYPE_5__ {TYPE_1__ port; } ;


 int IORESOURCE_MEM ;
 int NR_PORTS ;
 int platform_set_drvdata (struct platform_device*,TYPE_2__*) ;
 TYPE_2__* sa1100_ports ;
 int sa1100_reg ;
 int uart_add_one_port (int *,TYPE_1__*) ;

__attribute__((used)) static int sa1100_serial_probe(struct platform_device *dev)
{
 struct resource *res = dev->resource;
 int i;

 for (i = 0; i < dev->num_resources; i++, res++)
  if (res->flags & IORESOURCE_MEM)
   break;

 if (i < dev->num_resources) {
  for (i = 0; i < NR_PORTS; i++) {
   if (sa1100_ports[i].port.mapbase != res->start)
    continue;

   sa1100_ports[i].port.dev = &dev->dev;
   uart_add_one_port(&sa1100_reg, &sa1100_ports[i].port);
   platform_set_drvdata(dev, &sa1100_ports[i]);
   break;
  }
 }

 return 0;
}
