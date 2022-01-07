
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int flags; } ;
struct pci_dev {int dev; struct pci_bus* bus; struct resource* resource; } ;
struct pci_bus {struct pci_bus* parent; TYPE_1__* self; } ;
typedef int resource_size_t ;
struct TYPE_2__ {scalar_t__ transparent; } ;


 int EINVAL ;
 int IORESOURCE_IO ;
 int IORESOURCE_MEM ;
 int IORESOURCE_PREFETCH ;
 int __pci_assign_resource (struct pci_bus*,struct pci_dev*,int) ;
 int dev_info (int *,char*,int,...) ;
 int pci_resource_alignment (struct pci_dev*,struct resource*) ;
 scalar_t__ resource_size (struct resource*) ;

int pci_assign_resource(struct pci_dev *dev, int resno)
{
 struct resource *res = dev->resource + resno;
 resource_size_t align;
 struct pci_bus *bus;
 int ret;
 char *type;

 align = pci_resource_alignment(dev, res);
 if (!align) {
  dev_info(&dev->dev, "BAR %d: can't assign %pR "
    "(bogus alignment)\n", resno, res);
  return -EINVAL;
 }

 bus = dev->bus;
 while ((ret = __pci_assign_resource(bus, dev, resno))) {
  if (bus->parent && bus->self->transparent)
   bus = bus->parent;
  else
   bus = ((void*)0);
  if (bus)
   continue;
  break;
 }

 if (ret) {
  if (res->flags & IORESOURCE_MEM)
   if (res->flags & IORESOURCE_PREFETCH)
    type = "mem pref";
   else
    type = "mem";
  else if (res->flags & IORESOURCE_IO)
   type = "io";
  else
   type = "unknown";
  dev_info(&dev->dev,
    "BAR %d: can't assign %s (size %#llx)\n",
    resno, type, (unsigned long long) resource_size(res));
 }

 return ret;
}
