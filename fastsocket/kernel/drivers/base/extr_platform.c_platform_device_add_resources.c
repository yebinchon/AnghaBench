
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct platform_device {unsigned int num_resources; struct resource* resource; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct resource* kmalloc (int,int ) ;
 int memcpy (struct resource*,struct resource*,int) ;

int platform_device_add_resources(struct platform_device *pdev,
      struct resource *res, unsigned int num)
{
 struct resource *r;

 r = kmalloc(sizeof(struct resource) * num, GFP_KERNEL);
 if (r) {
  memcpy(r, res, sizeof(struct resource) * num);
  pdev->resource = r;
  pdev->num_resources = num;
 }
 return r ? 0 : -ENOMEM;
}
