
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dev; } ;
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct platform_device {int dummy; } ;


 int EBUSY ;
 int ENODEV ;
 int IORESOURCE_MEM ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 void* request_mem_region (scalar_t__,scalar_t__,char*) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static int imx_request_port(struct uart_port *port)
{
 struct platform_device *pdev = to_platform_device(port->dev);
 struct resource *mmres;
 void *ret;

 mmres = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!mmres)
  return -ENODEV;

 ret = request_mem_region(mmres->start, mmres->end - mmres->start + 1,
   "imx-uart");

 return ret ? 0 : -EBUSY;
}
