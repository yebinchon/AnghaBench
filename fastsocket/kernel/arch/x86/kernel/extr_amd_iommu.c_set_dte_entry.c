
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u16 ;
struct protection_domain {int mode; int id; int pt_root; } ;
struct TYPE_2__ {int * data; } ;


 int DEV_ENTRY_MODE_MASK ;
 int DEV_ENTRY_MODE_SHIFT ;
 int IOMMU_PTE_IR ;
 int IOMMU_PTE_IW ;
 int IOMMU_PTE_P ;
 int IOMMU_PTE_TV ;
 TYPE_1__* amd_iommu_dev_table ;
 struct protection_domain** amd_iommu_pd_table ;
 int lower_32_bits (int) ;
 int upper_32_bits (int) ;
 int virt_to_phys (int ) ;

__attribute__((used)) static void set_dte_entry(u16 devid, struct protection_domain *domain)
{
 u64 pte_root = virt_to_phys(domain->pt_root);

 pte_root |= (domain->mode & DEV_ENTRY_MODE_MASK)
      << DEV_ENTRY_MODE_SHIFT;
 pte_root |= IOMMU_PTE_IR | IOMMU_PTE_IW | IOMMU_PTE_P | IOMMU_PTE_TV;

 amd_iommu_dev_table[devid].data[2] = domain->id;
 amd_iommu_dev_table[devid].data[1] = upper_32_bits(pte_root);
 amd_iommu_dev_table[devid].data[0] = lower_32_bits(pte_root);

 amd_iommu_pd_table[devid] = domain;
}
