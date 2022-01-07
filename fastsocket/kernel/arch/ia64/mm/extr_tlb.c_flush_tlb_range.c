
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct mm_struct {scalar_t__ context; } ;
struct TYPE_4__ {struct mm_struct* active_mm; } ;
struct TYPE_3__ {unsigned long mask; unsigned long max_bits; } ;


 int cpumask_weight (int ) ;
 TYPE_2__* current ;
 unsigned long ia64_fls (unsigned long) ;
 int ia64_ptcl (unsigned long,unsigned long) ;
 int ia64_srlz_i () ;
 int mm_cpumask (struct mm_struct*) ;
 int platform_global_tlb_purge (struct mm_struct*,unsigned long,unsigned long,unsigned long) ;
 int preempt_disable () ;
 int preempt_enable () ;
 TYPE_1__ purge ;
 scalar_t__ unlikely (int) ;

void
flush_tlb_range (struct vm_area_struct *vma, unsigned long start,
   unsigned long end)
{
 struct mm_struct *mm = vma->vm_mm;
 unsigned long size = end - start;
 unsigned long nbits;


 if (mm != current->active_mm) {
  mm->context = 0;
  return;
 }


 nbits = ia64_fls(size + 0xfff);
 while (unlikely (((1UL << nbits) & purge.mask) == 0) &&
   (nbits < purge.max_bits))
  ++nbits;
 if (nbits > purge.max_bits)
  nbits = purge.max_bits;
 start &= ~((1UL << nbits) - 1);

 preempt_disable();







 do {
  ia64_ptcl(start, (nbits<<2));
  start += (1UL << nbits);
 } while (start < end);
 preempt_enable();
 ia64_srlz_i();
}
