
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_iommu_arena {unsigned long* ptes; int lock; } ;
struct page {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 unsigned long IOMMU_RESERVED_PTE ;
 unsigned long mk_iommu_pte (int ) ;
 int page_to_phys (struct page*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
iommu_bind(struct pci_iommu_arena *arena, long pg_start, long pg_count,
    struct page **pages)
{
 unsigned long flags;
 unsigned long *ptes;
 long i, j;

 if (!arena) return -EINVAL;

 spin_lock_irqsave(&arena->lock, flags);

 ptes = arena->ptes;

 for(j = pg_start; j < pg_start + pg_count; j++) {
  if (ptes[j] != IOMMU_RESERVED_PTE) {
   spin_unlock_irqrestore(&arena->lock, flags);
   return -EBUSY;
  }
 }

 for(i = 0, j = pg_start; i < pg_count; i++, j++)
  ptes[j] = mk_iommu_pte(page_to_phys(pages[i]));

 spin_unlock_irqrestore(&arena->lock, flags);

 return 0;
}
