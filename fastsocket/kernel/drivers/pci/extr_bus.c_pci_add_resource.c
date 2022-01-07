
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct list_head {int dummy; } ;


 int pci_add_resource_offset (struct list_head*,struct resource*,int ) ;

void pci_add_resource(struct list_head *resources, struct resource *res)
{
 pci_add_resource_offset(resources, res, 0);
}
