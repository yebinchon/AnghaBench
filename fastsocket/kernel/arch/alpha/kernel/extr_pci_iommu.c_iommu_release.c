
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_iommu_arena {unsigned long* ptes; } ;


 int EBUSY ;
 int EINVAL ;
 unsigned long IOMMU_RESERVED_PTE ;
 int iommu_arena_free (struct pci_iommu_arena*,long,long) ;

int
iommu_release(struct pci_iommu_arena *arena, long pg_start, long pg_count)
{
 unsigned long *ptes;
 long i;

 if (!arena) return -EINVAL;

 ptes = arena->ptes;


 for(i = pg_start; i < pg_start + pg_count; i++)
  if (ptes[i] != IOMMU_RESERVED_PTE)
   return -EBUSY;

 iommu_arena_free(arena, pg_start, pg_count);
 return 0;
}
