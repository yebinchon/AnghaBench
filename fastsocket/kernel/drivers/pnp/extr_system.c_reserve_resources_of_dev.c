
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int flags; int start; int end; } ;
struct pnp_dev {int dummy; } ;


 int IORESOURCE_DISABLED ;
 int IORESOURCE_IO ;
 int IORESOURCE_MEM ;
 struct resource* pnp_get_resource (struct pnp_dev*,int ,int) ;
 int reserve_range (struct pnp_dev*,struct resource*,int) ;

__attribute__((used)) static void reserve_resources_of_dev(struct pnp_dev *dev)
{
 struct resource *res;
 int i;

 for (i = 0; (res = pnp_get_resource(dev, IORESOURCE_IO, i)); i++) {
  if (res->flags & IORESOURCE_DISABLED)
   continue;
  if (res->start == 0)
   continue;
  if (res->start < 0x100)
   continue;
  if (res->end < res->start)
   continue;

  reserve_range(dev, res, 1);
 }

 for (i = 0; (res = pnp_get_resource(dev, IORESOURCE_MEM, i)); i++) {
  if (res->flags & IORESOURCE_DISABLED)
   continue;

  reserve_range(dev, res, 0);
 }
}
