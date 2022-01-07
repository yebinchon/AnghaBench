
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dev; } ;
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct platform_device {int dummy; } ;


 int IORESOURCE_MEM ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int release_mem_region (scalar_t__,scalar_t__) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static void imx_release_port(struct uart_port *port)
{
 struct platform_device *pdev = to_platform_device(port->dev);
 struct resource *mmres;

 mmres = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 release_mem_region(mmres->start, mmres->end - mmres->start + 1);
}
