
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct ioat_dca_priv {int max_requesters; int requester_count; TYPE_1__* req_slots; scalar_t__ dca_base; } ;
struct device {int * bus; } ;
struct dca_provider {int dummy; } ;
struct TYPE_2__ {scalar_t__ rid; struct pci_dev* pdev; } ;


 int ENODEV ;
 struct ioat_dca_priv* dca_priv (struct dca_provider*) ;
 int pci_bus_type ;
 struct pci_dev* to_pci_dev (struct device*) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static int ioat_dca_remove_requester(struct dca_provider *dca,
         struct device *dev)
{
 struct ioat_dca_priv *ioatdca = dca_priv(dca);
 struct pci_dev *pdev;
 int i;


 if (dev->bus != &pci_bus_type)
  return -ENODEV;
 pdev = to_pci_dev(dev);

 for (i = 0; i < ioatdca->max_requesters; i++) {
  if (ioatdca->req_slots[i].pdev == pdev) {
   writew(0, ioatdca->dca_base + (i * 4));
   ioatdca->req_slots[i].pdev = ((void*)0);
   ioatdca->req_slots[i].rid = 0;
   ioatdca->requester_count--;
   return i;
  }
 }
 return -ENODEV;
}
