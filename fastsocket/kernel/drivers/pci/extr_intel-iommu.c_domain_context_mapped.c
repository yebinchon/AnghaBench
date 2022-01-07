
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int devfn; TYPE_2__* bus; TYPE_1__* subordinate; } ;
struct intel_iommu {int dummy; } ;
struct TYPE_4__ {int number; struct pci_dev* self; } ;
struct TYPE_3__ {int number; } ;


 int ENODEV ;
 int device_context_mapped (struct intel_iommu*,int ,int ) ;
 struct intel_iommu* device_to_iommu (int ,int ,int ) ;
 int pci_domain_nr (TYPE_2__*) ;
 struct pci_dev* pci_find_upstream_pcie_bridge (struct pci_dev*) ;
 scalar_t__ pci_is_pcie (struct pci_dev*) ;

__attribute__((used)) static int domain_context_mapped(struct pci_dev *pdev)
{
 int ret;
 struct pci_dev *tmp, *parent;
 struct intel_iommu *iommu;

 iommu = device_to_iommu(pci_domain_nr(pdev->bus), pdev->bus->number,
    pdev->devfn);
 if (!iommu)
  return -ENODEV;

 ret = device_context_mapped(iommu, pdev->bus->number, pdev->devfn);
 if (!ret)
  return ret;

 tmp = pci_find_upstream_pcie_bridge(pdev);
 if (!tmp)
  return ret;

 parent = pdev->bus->self;
 while (parent != tmp) {
  ret = device_context_mapped(iommu, parent->bus->number,
         parent->devfn);
  if (!ret)
   return ret;
  parent = parent->bus->self;
 }
 if (pci_is_pcie(tmp))
  return device_context_mapped(iommu, tmp->subordinate->number,
          0);
 else
  return device_context_mapped(iommu, tmp->bus->number,
          tmp->devfn);
}
