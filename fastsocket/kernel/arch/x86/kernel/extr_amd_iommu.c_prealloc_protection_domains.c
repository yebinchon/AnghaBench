
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct pci_dev {int devfn; TYPE_1__* bus; } ;
struct dma_ops_domain {size_t target_dev; int list; int domain; } ;
struct amd_iommu {int dummy; } ;
struct TYPE_2__ {int number; } ;


 int PCI_ANY_ID ;
 size_t* amd_iommu_alias_table ;
 size_t amd_iommu_last_bdf ;
 struct amd_iommu** amd_iommu_rlookup_table ;
 int attach_device (struct amd_iommu*,int *,size_t) ;
 size_t calc_devid (int ,int ) ;
 struct dma_ops_domain* dma_ops_domain_alloc (struct amd_iommu*) ;
 scalar_t__ domain_for_device (size_t) ;
 int init_unity_mappings_for_device (struct dma_ops_domain*,size_t) ;
 int iommu_pd_list ;
 int list_add_tail (int *,int *) ;
 struct pci_dev* pci_get_device (int ,int ,struct pci_dev*) ;

__attribute__((used)) static void prealloc_protection_domains(void)
{
 struct pci_dev *dev = ((void*)0);
 struct dma_ops_domain *dma_dom;
 struct amd_iommu *iommu;
 u16 devid, __devid;

 while ((dev = pci_get_device(PCI_ANY_ID, PCI_ANY_ID, dev)) != ((void*)0)) {
  __devid = devid = calc_devid(dev->bus->number, dev->devfn);
  if (devid > amd_iommu_last_bdf)
   continue;
  devid = amd_iommu_alias_table[devid];
  if (domain_for_device(devid))
   continue;
  iommu = amd_iommu_rlookup_table[devid];
  if (!iommu)
   continue;
  dma_dom = dma_ops_domain_alloc(iommu);
  if (!dma_dom)
   continue;
  init_unity_mappings_for_device(dma_dom, devid);
  dma_dom->target_dev = devid;

  attach_device(iommu, &dma_dom->domain, devid);
  if (__devid != devid)
   attach_device(iommu, &dma_dom->domain, __devid);

  list_add_tail(&dma_dom->list, &iommu_pd_list);
 }
}
