
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
 TYPE_2__* pnx8xxx_ports ;
 int pnx8xxx_reg ;
 int uart_add_one_port (int *,TYPE_1__*) ;

__attribute__((used)) static int pnx8xxx_serial_probe(struct platform_device *pdev)
{
 struct resource *res = pdev->resource;
 int i;

 for (i = 0; i < pdev->num_resources; i++, res++) {
  if (!(res->flags & IORESOURCE_MEM))
   continue;

  for (i = 0; i < NR_PORTS; i++) {
   if (pnx8xxx_ports[i].port.mapbase != res->start)
    continue;

   pnx8xxx_ports[i].port.dev = &pdev->dev;
   uart_add_one_port(&pnx8xxx_reg, &pnx8xxx_ports[i].port);
   platform_set_drvdata(pdev, &pnx8xxx_ports[i]);
   break;
  }
 }

 return 0;
}
