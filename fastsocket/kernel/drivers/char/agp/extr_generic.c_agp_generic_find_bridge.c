
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct agp_bridge_data {int dummy; } ;


 struct agp_bridge_data* agp_bridge ;
 int agp_bridges ;
 scalar_t__ list_empty (int *) ;

struct agp_bridge_data *agp_generic_find_bridge(struct pci_dev *pdev)
{
 if (list_empty(&agp_bridges))
  return ((void*)0);

 return agp_bridge;
}
