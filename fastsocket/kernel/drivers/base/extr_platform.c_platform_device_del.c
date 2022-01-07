
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct platform_device {int num_resources; struct resource* resource; int dev; } ;


 unsigned long IORESOURCE_IO ;
 unsigned long IORESOURCE_MEM ;
 int device_del (int *) ;
 int release_resource (struct resource*) ;
 unsigned long resource_type (struct resource*) ;

void platform_device_del(struct platform_device *pdev)
{
 int i;

 if (pdev) {
  device_del(&pdev->dev);

  for (i = 0; i < pdev->num_resources; i++) {
   struct resource *r = &pdev->resource[i];
   unsigned long type = resource_type(r);

   if (type == IORESOURCE_MEM || type == IORESOURCE_IO)
    release_resource(r);
  }
 }
}
