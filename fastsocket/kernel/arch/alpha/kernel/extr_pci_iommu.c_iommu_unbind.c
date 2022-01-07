
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_iommu_arena {unsigned long* ptes; } ;


 int EINVAL ;
 unsigned long IOMMU_RESERVED_PTE ;

int
iommu_unbind(struct pci_iommu_arena *arena, long pg_start, long pg_count)
{
 unsigned long *p;
 long i;

 if (!arena) return -EINVAL;

 p = arena->ptes + pg_start;
 for(i = 0; i < pg_count; i++)
  p[i] = IOMMU_RESERVED_PTE;

 return 0;
}
