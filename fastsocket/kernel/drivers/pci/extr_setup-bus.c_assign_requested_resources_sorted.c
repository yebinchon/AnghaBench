
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct resource_list_x {int dummy; } ;
struct resource_list {TYPE_1__* dev; struct resource* res; struct resource_list* next; } ;
struct resource {int flags; } ;
struct TYPE_3__ {int bus; struct resource* resource; } ;


 int IORESOURCE_ROM_ENABLE ;
 int PCI_ROM_RESOURCE ;
 int add_to_failed_list (struct resource_list_x*,TYPE_1__*,struct resource*) ;
 scalar_t__ pci_assign_resource (TYPE_1__*,int) ;
 int pci_is_root_bus (int ) ;
 int reset_resource (struct resource*) ;
 scalar_t__ resource_size (struct resource*) ;

__attribute__((used)) static void assign_requested_resources_sorted(struct resource_list *head,
     struct resource_list_x *fail_head)
{
 struct resource *res;
 struct resource_list *list;
 int idx;

 for (list = head->next; list; list = list->next) {
  res = list->res;
  idx = res - &list->dev->resource[0];
  if (resource_size(res) && pci_assign_resource(list->dev, idx)) {
   if (fail_head && !pci_is_root_bus(list->dev->bus)) {




    if (!((idx == PCI_ROM_RESOURCE) &&
          (!(res->flags & IORESOURCE_ROM_ENABLE))))
     add_to_failed_list(fail_head, list->dev, res);
   }
   reset_resource(res);
  }
 }
}
