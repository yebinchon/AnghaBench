
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct pnp_dev {int dev; } ;


 int pnp_dbg (int *,char*,unsigned long) ;
 scalar_t__ pnp_resource_enabled (struct resource*) ;

__attribute__((used)) static void pnpbios_encode_irq(struct pnp_dev *dev, unsigned char *p,
          struct resource *res)
{
 unsigned long map;

 if (pnp_resource_enabled(res))
  map = 1 << res->start;
 else
  map = 0;

 p[1] = map & 0xff;
 p[2] = (map >> 8) & 0xff;

 pnp_dbg(&dev->dev, "  encode irq mask %#lx\n", map);
}
