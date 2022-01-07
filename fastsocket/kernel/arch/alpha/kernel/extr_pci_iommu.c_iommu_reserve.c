
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_iommu_arena {unsigned long* ptes; long next_entry; int lock; } ;


 int EINVAL ;
 unsigned long IOMMU_RESERVED_PTE ;
 long iommu_arena_find_pages (int *,struct pci_iommu_arena*,long,long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
iommu_reserve(struct pci_iommu_arena *arena, long pg_count, long align_mask)
{
 unsigned long flags;
 unsigned long *ptes;
 long i, p;

 if (!arena) return -EINVAL;

 spin_lock_irqsave(&arena->lock, flags);


 ptes = arena->ptes;
 p = iommu_arena_find_pages(((void*)0), arena, pg_count, align_mask);
 if (p < 0) {
  spin_unlock_irqrestore(&arena->lock, flags);
  return -1;
 }




 for (i = 0; i < pg_count; ++i)
  ptes[p+i] = IOMMU_RESERVED_PTE;

 arena->next_entry = p + pg_count;
 spin_unlock_irqrestore(&arena->lock, flags);

 return p;
}
