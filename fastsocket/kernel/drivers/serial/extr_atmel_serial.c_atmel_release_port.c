
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int flags; int * membase; int mapbase; int dev; } ;
struct platform_device {TYPE_1__* resource; } ;
struct TYPE_2__ {int end; int start; } ;


 int UPF_IOREMAP ;
 int iounmap (int *) ;
 int release_mem_region (int ,int) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static void atmel_release_port(struct uart_port *port)
{
 struct platform_device *pdev = to_platform_device(port->dev);
 int size = pdev->resource[0].end - pdev->resource[0].start + 1;

 release_mem_region(port->mapbase, size);

 if (port->flags & UPF_IOREMAP) {
  iounmap(port->membase);
  port->membase = ((void*)0);
 }
}
