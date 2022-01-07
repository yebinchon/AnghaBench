
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct root_entry {int dummy; } ;
struct intel_iommu {int lock; struct root_entry* root_entry; } ;
typedef struct root_entry context_entry ;


 int ROOT_ENTRY_NR ;
 int free_pgtable_page (struct root_entry*) ;
 struct root_entry* get_context_addr_from_root (struct root_entry*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void free_context_table(struct intel_iommu *iommu)
{
 struct root_entry *root;
 int i;
 unsigned long flags;
 struct context_entry *context;

 spin_lock_irqsave(&iommu->lock, flags);
 if (!iommu->root_entry) {
  goto out;
 }
 for (i = 0; i < ROOT_ENTRY_NR; i++) {
  root = &iommu->root_entry[i];
  context = get_context_addr_from_root(root);
  if (context)
   free_pgtable_page(context);
 }
 free_pgtable_page(iommu->root_entry);
 iommu->root_entry = ((void*)0);
out:
 spin_unlock_irqrestore(&iommu->lock, flags);
}
