
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct tsb {int dummy; } ;
struct TYPE_4__ {int lock; TYPE_1__* tsb_block; } ;
struct mm_struct {TYPE_2__ context; } ;
typedef int pte_t ;
struct TYPE_3__ {unsigned long tsb_nentries; struct tsb* tsb; } ;


 unsigned long HPAGE_SHIFT ;
 unsigned long MM_TSB_BASE ;
 size_t MM_TSB_HUGE ;
 unsigned long PAGE_SHIFT ;
 int _PAGE_SZALL_4U ;
 int _PAGE_SZALL_4V ;
 int _PAGE_SZHUGE_4U ;
 int _PAGE_SZHUGE_4V ;
 int flush_dcache (unsigned long) ;
 scalar_t__ hypervisor ;
 scalar_t__ pfn_valid (unsigned long) ;
 unsigned long pte_pfn (int ) ;
 int pte_val (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ tlb_type ;
 int tsb_insert (struct tsb*,unsigned long,int) ;

void update_mmu_cache(struct vm_area_struct *vma, unsigned long address, pte_t pte)
{
 struct mm_struct *mm;
 struct tsb *tsb;
 unsigned long tag, flags;
 unsigned long tsb_index, tsb_hash_shift;

 if (tlb_type != hypervisor) {
  unsigned long pfn = pte_pfn(pte);

  if (pfn_valid(pfn))
   flush_dcache(pfn);
 }

 mm = vma->vm_mm;

 tsb_index = MM_TSB_BASE;
 tsb_hash_shift = PAGE_SHIFT;

 spin_lock_irqsave(&mm->context.lock, flags);
 tsb = mm->context.tsb_block[tsb_index].tsb;
 tsb += ((address >> tsb_hash_shift) &
  (mm->context.tsb_block[tsb_index].tsb_nentries - 1UL));
 tag = (address >> 22UL);
 tsb_insert(tsb, tag, pte_val(pte));

 spin_unlock_irqrestore(&mm->context.lock, flags);
}
