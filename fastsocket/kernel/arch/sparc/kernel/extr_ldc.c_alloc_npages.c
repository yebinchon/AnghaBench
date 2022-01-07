
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ldc_mtable_entry {int dummy; } ;
struct ldc_iommu {struct ldc_mtable_entry* page_table; } ;


 long arena_alloc (struct ldc_iommu*,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct ldc_mtable_entry *alloc_npages(struct ldc_iommu *iommu,
          unsigned long npages)
{
 long entry;

 entry = arena_alloc(iommu, npages);
 if (unlikely(entry < 0))
  return ((void*)0);

 return iommu->page_table + entry;
}
