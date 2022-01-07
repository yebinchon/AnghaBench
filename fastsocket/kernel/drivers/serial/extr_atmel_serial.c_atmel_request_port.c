
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int flags; int mapbase; int * membase; int dev; } ;
struct platform_device {TYPE_1__* resource; } ;
struct TYPE_2__ {int end; int start; } ;


 int EBUSY ;
 int ENOMEM ;
 int UPF_IOREMAP ;
 int * ioremap (int ,int) ;
 int release_mem_region (int ,int) ;
 int request_mem_region (int ,int,char*) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static int atmel_request_port(struct uart_port *port)
{
 struct platform_device *pdev = to_platform_device(port->dev);
 int size = pdev->resource[0].end - pdev->resource[0].start + 1;

 if (!request_mem_region(port->mapbase, size, "atmel_serial"))
  return -EBUSY;

 if (port->flags & UPF_IOREMAP) {
  port->membase = ioremap(port->mapbase, size);
  if (port->membase == ((void*)0)) {
   release_mem_region(port->mapbase, size);
   return -ENOMEM;
  }
 }

 return 0;
}
