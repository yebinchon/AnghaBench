
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int flags; scalar_t__ start; } ;
struct platform_device {int num_resources; int dev; struct resource* resource; } ;
struct TYPE_3__ {scalar_t__ mapbase; int * dev; } ;
struct TYPE_4__ {TYPE_1__ port; } ;


 int IORESOURCE_MEM ;
 TYPE_2__* bfin_serial_ports ;
 int bfin_serial_reg ;
 int nr_active_ports ;
 int uart_add_one_port (int *,TYPE_1__*) ;

__attribute__((used)) static int bfin_serial_probe(struct platform_device *dev)
{
 struct resource *res = dev->resource;
 int i;

 for (i = 0; i < dev->num_resources; i++, res++)
  if (res->flags & IORESOURCE_MEM)
   break;

 if (i < dev->num_resources) {
  for (i = 0; i < nr_active_ports; i++, res++) {
   if (bfin_serial_ports[i].port.mapbase != res->start)
    continue;
   bfin_serial_ports[i].port.dev = &dev->dev;
   uart_add_one_port(&bfin_serial_reg, &bfin_serial_ports[i].port);
  }
 }

 return 0;
}
