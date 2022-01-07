
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int devfn; TYPE_1__* bus; TYPE_1__* subordinate; } ;
struct dmar_domain {int dummy; } ;
struct TYPE_2__ {int number; struct pci_dev* self; } ;


 int domain_context_mapping_one (struct dmar_domain*,int ,int ,int ,int) ;
 int pci_domain_nr (TYPE_1__*) ;
 struct pci_dev* pci_find_upstream_pcie_bridge (struct pci_dev*) ;
 scalar_t__ pci_is_pcie (struct pci_dev*) ;

__attribute__((used)) static int
domain_context_mapping(struct dmar_domain *domain, struct pci_dev *pdev,
   int translation)
{
 int ret;
 struct pci_dev *tmp, *parent;

 ret = domain_context_mapping_one(domain, pci_domain_nr(pdev->bus),
      pdev->bus->number, pdev->devfn,
      translation);
 if (ret)
  return ret;


 tmp = pci_find_upstream_pcie_bridge(pdev);
 if (!tmp)
  return 0;

 parent = pdev->bus->self;
 while (parent != tmp) {
  ret = domain_context_mapping_one(domain,
       pci_domain_nr(parent->bus),
       parent->bus->number,
       parent->devfn, translation);
  if (ret)
   return ret;
  parent = parent->bus->self;
 }
 if (pci_is_pcie(tmp))
  return domain_context_mapping_one(domain,
     pci_domain_nr(tmp->subordinate),
     tmp->subordinate->number, 0,
     translation);
 else
  return domain_context_mapping_one(domain,
        pci_domain_nr(tmp->bus),
        tmp->bus->number,
        tmp->devfn,
        translation);
}
