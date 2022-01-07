
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct platform_device {int dummy; } ;


 int ENXIO ;
 int IORESOURCE_IRQ ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char const*) ;

int platform_get_irq_byname(struct platform_device *dev, const char *name)
{
 struct resource *r = platform_get_resource_byname(dev, IORESOURCE_IRQ,
         name);

 return r ? r->start : -ENXIO;
}
