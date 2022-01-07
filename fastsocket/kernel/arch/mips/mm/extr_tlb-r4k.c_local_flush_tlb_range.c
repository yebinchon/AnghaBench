
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct mm_struct {int dummy; } ;
struct TYPE_2__ {int tlbsize; } ;


 int ENTER_CRITICAL (unsigned long) ;
 int EXIT_CRITICAL (unsigned long) ;
 int FLUSH_ITLB ;
 int PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 int UNIQUE_ENTRYHI (int) ;
 int cpu_asid (int,struct mm_struct*) ;
 scalar_t__ cpu_context (int,struct mm_struct*) ;
 TYPE_1__ current_cpu_data ;
 int drop_mmu_context (struct mm_struct*,int) ;
 int mtc0_tlbw_hazard () ;
 int read_c0_entryhi () ;
 int read_c0_index () ;
 int smp_processor_id () ;
 int tlb_probe () ;
 int tlb_probe_hazard () ;
 int tlb_write_indexed () ;
 int tlbw_use_hazard () ;
 int write_c0_entryhi (int) ;
 int write_c0_entrylo0 (int ) ;
 int write_c0_entrylo1 (int ) ;

void local_flush_tlb_range(struct vm_area_struct *vma, unsigned long start,
 unsigned long end)
{
 struct mm_struct *mm = vma->vm_mm;
 int cpu = smp_processor_id();

 if (cpu_context(cpu, mm) != 0) {
  unsigned long size, flags;

  ENTER_CRITICAL(flags);
  size = (end - start + (PAGE_SIZE - 1)) >> PAGE_SHIFT;
  size = (size + 1) >> 1;
  if (size <= current_cpu_data.tlbsize/2) {
   int oldpid = read_c0_entryhi();
   int newpid = cpu_asid(cpu, mm);

   start &= (PAGE_MASK << 1);
   end += ((PAGE_SIZE << 1) - 1);
   end &= (PAGE_MASK << 1);
   while (start < end) {
    int idx;

    write_c0_entryhi(start | newpid);
    start += (PAGE_SIZE << 1);
    mtc0_tlbw_hazard();
    tlb_probe();
    tlb_probe_hazard();
    idx = read_c0_index();
    write_c0_entrylo0(0);
    write_c0_entrylo1(0);
    if (idx < 0)
     continue;

    write_c0_entryhi(UNIQUE_ENTRYHI(idx));
    mtc0_tlbw_hazard();
    tlb_write_indexed();
   }
   tlbw_use_hazard();
   write_c0_entryhi(oldpid);
  } else {
   drop_mmu_context(mm, cpu);
  }
  FLUSH_ITLB;
  EXIT_CRITICAL(flags);
 }
}
