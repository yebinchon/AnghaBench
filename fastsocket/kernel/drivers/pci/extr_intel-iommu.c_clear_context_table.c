
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct root_entry {int dummy; } ;
struct intel_iommu {int lock; struct root_entry* root_entry; } ;
struct context_entry {int dummy; } ;


 int __iommu_flush_cache (struct intel_iommu*,struct context_entry*,int) ;
 int context_clear_entry (struct context_entry*) ;
 struct context_entry* get_context_addr_from_root (struct root_entry*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void clear_context_table(struct intel_iommu *iommu, u8 bus, u8 devfn)
{
 struct root_entry *root;
 struct context_entry *context;
 unsigned long flags;

 spin_lock_irqsave(&iommu->lock, flags);
 root = &iommu->root_entry[bus];
 context = get_context_addr_from_root(root);
 if (context) {
  context_clear_entry(&context[devfn]);
  __iommu_flush_cache(iommu, &context[devfn], sizeof(*context));

 }
 spin_unlock_irqrestore(&iommu->lock, flags);
}
