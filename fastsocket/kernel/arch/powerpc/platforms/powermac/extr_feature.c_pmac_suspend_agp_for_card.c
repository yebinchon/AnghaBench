
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {scalar_t__ bus; } ;
struct TYPE_3__ {scalar_t__ bus; } ;


 TYPE_1__* pmac_agp_bridge ;
 int pmac_agp_suspend (TYPE_1__*) ;

void pmac_suspend_agp_for_card(struct pci_dev *dev)
{
 if (pmac_agp_bridge == ((void*)0) || pmac_agp_suspend == ((void*)0))
  return;
 if (pmac_agp_bridge->bus != dev->bus)
  return;
 pmac_agp_suspend(pmac_agp_bridge);
}
