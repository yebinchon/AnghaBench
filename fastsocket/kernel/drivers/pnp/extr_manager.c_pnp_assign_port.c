
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {scalar_t__ start; scalar_t__ end; int flags; } ;
struct pnp_port {int flags; scalar_t__ size; scalar_t__ min; scalar_t__ align; scalar_t__ max; } ;
struct pnp_dev {int dev; } ;


 int EBUSY ;
 int IORESOURCE_AUTO ;
 int IORESOURCE_DISABLED ;
 int IORESOURCE_IO ;
 int pnp_add_io_resource (struct pnp_dev*,scalar_t__,scalar_t__,int) ;
 int pnp_check_port (struct pnp_dev*,struct resource*) ;
 int pnp_dbg (int *,char*,int,...) ;
 struct resource* pnp_get_resource (struct pnp_dev*,int ,int) ;

__attribute__((used)) static int pnp_assign_port(struct pnp_dev *dev, struct pnp_port *rule, int idx)
{
 struct resource *res, local_res;

 res = pnp_get_resource(dev, IORESOURCE_IO, idx);
 if (res) {
  pnp_dbg(&dev->dev, "  io %d already set to %#llx-%#llx "
   "flags %#lx\n", idx, (unsigned long long) res->start,
   (unsigned long long) res->end, res->flags);
  return 0;
 }

 res = &local_res;
 res->flags = rule->flags | IORESOURCE_AUTO;
 res->start = 0;
 res->end = 0;

 if (!rule->size) {
  res->flags |= IORESOURCE_DISABLED;
  pnp_dbg(&dev->dev, "  io %d disabled\n", idx);
  goto __add;
 }

 res->start = rule->min;
 res->end = res->start + rule->size - 1;

 while (!pnp_check_port(dev, res)) {
  res->start += rule->align;
  res->end = res->start + rule->size - 1;
  if (res->start > rule->max || !rule->align) {
   pnp_dbg(&dev->dev, "  couldn't assign io %d "
    "(min %#llx max %#llx)\n", idx,
    (unsigned long long) rule->min,
    (unsigned long long) rule->max);
   return -EBUSY;
  }
 }

__add:
 pnp_add_io_resource(dev, res->start, res->end, res->flags);
 return 0;
}
