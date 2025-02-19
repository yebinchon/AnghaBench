
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct protection_domain {int dummy; } ;


 int BUG_ON (int) ;
 int EBUSY ;
 int EINVAL ;
 int GFP_KERNEL ;
 int IOMMU_PROT_IR ;
 int IOMMU_PROT_IW ;
 int IOMMU_PROT_MASK ;
 unsigned long IOMMU_PTE_IR ;
 unsigned long IOMMU_PTE_IW ;
 unsigned long IOMMU_PTE_P ;
 scalar_t__ IOMMU_PTE_PRESENT (unsigned long) ;
 unsigned long PAGE_ALIGN (unsigned long) ;
 int PM_ALIGNED (int,unsigned long) ;
 unsigned long* alloc_pte (struct protection_domain*,unsigned long,int,int *,int ) ;
 int update_domain (struct protection_domain*) ;

__attribute__((used)) static int iommu_map_page(struct protection_domain *dom,
     unsigned long bus_addr,
     unsigned long phys_addr,
     int prot,
     int map_size)
{
 u64 __pte, *pte;

 bus_addr = PAGE_ALIGN(bus_addr);
 phys_addr = PAGE_ALIGN(phys_addr);

 BUG_ON(!PM_ALIGNED(map_size, bus_addr));
 BUG_ON(!PM_ALIGNED(map_size, phys_addr));

 if (!(prot & IOMMU_PROT_MASK))
  return -EINVAL;

 pte = alloc_pte(dom, bus_addr, map_size, ((void*)0), GFP_KERNEL);

 if (IOMMU_PTE_PRESENT(*pte))
  return -EBUSY;

 __pte = phys_addr | IOMMU_PTE_P;
 if (prot & IOMMU_PROT_IR)
  __pte |= IOMMU_PTE_IR;
 if (prot & IOMMU_PROT_IW)
  __pte |= IOMMU_PTE_IW;

 *pte = __pte;

 update_domain(dom);

 return 0;
}
