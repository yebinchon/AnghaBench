
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_devres {int dummy; } ;
struct pci_dev {int dev; } ;


 struct pci_devres* devres_find (int *,int ,int *,int *) ;
 scalar_t__ pci_is_managed (struct pci_dev*) ;
 int pcim_release ;

__attribute__((used)) static struct pci_devres * find_pci_dr(struct pci_dev *pdev)
{
 if (pci_is_managed(pdev))
  return devres_find(&pdev->dev, pcim_release, ((void*)0), ((void*)0));
 return ((void*)0);
}
