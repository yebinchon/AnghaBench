
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int name; } ;
struct platform_device {int num_resources; struct resource* resource; } ;


 unsigned int resource_type (struct resource*) ;
 int strcmp (int ,char const*) ;

struct resource *platform_get_resource_byname(struct platform_device *dev,
           unsigned int type,
           const char *name)
{
 int i;

 for (i = 0; i < dev->num_resources; i++) {
  struct resource *r = &dev->resource[i];

  if (type == resource_type(r) && !strcmp(r->name, name))
   return r;
 }
 return ((void*)0);
}
