
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct root_entry {int dummy; } ;
struct intel_iommu {int lock; struct root_entry* root_entry; } ;


 int ENOMEM ;
 int ROOT_SIZE ;
 int __iommu_flush_cache (struct intel_iommu*,struct root_entry*,int ) ;
 scalar_t__ alloc_pgtable_page () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int iommu_alloc_root_entry(struct intel_iommu *iommu)
{
 struct root_entry *root;
 unsigned long flags;

 root = (struct root_entry *)alloc_pgtable_page();
 if (!root)
  return -ENOMEM;

 __iommu_flush_cache(iommu, root, ROOT_SIZE);

 spin_lock_irqsave(&iommu->lock, flags);
 iommu->root_entry = root;
 spin_unlock_irqrestore(&iommu->lock, flags);

 return 0;
}
