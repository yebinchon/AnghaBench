
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;


 int ENTER_CRITICAL (unsigned long) ;
 int EXIT_CRITICAL (unsigned long) ;
 int FLUSH_ITLB_VM (struct vm_area_struct*) ;
 int PAGE_MASK ;
 int UNIQUE_ENTRYHI (int) ;
 int cpu_asid (int,int ) ;
 scalar_t__ cpu_context (int,int ) ;
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

void local_flush_tlb_page(struct vm_area_struct *vma, unsigned long page)
{
 int cpu = smp_processor_id();

 if (cpu_context(cpu, vma->vm_mm) != 0) {
  unsigned long flags;
  int oldpid, newpid, idx;

  newpid = cpu_asid(cpu, vma->vm_mm);
  page &= (PAGE_MASK << 1);
  ENTER_CRITICAL(flags);
  oldpid = read_c0_entryhi();
  write_c0_entryhi(page | newpid);
  mtc0_tlbw_hazard();
  tlb_probe();
  tlb_probe_hazard();
  idx = read_c0_index();
  write_c0_entrylo0(0);
  write_c0_entrylo1(0);
  if (idx < 0)
   goto finish;

  write_c0_entryhi(UNIQUE_ENTRYHI(idx));
  mtc0_tlbw_hazard();
  tlb_write_indexed();
  tlbw_use_hazard();

 finish:
  write_c0_entryhi(oldpid);
  FLUSH_ITLB_VM(vma);
  EXIT_CRITICAL(flags);
 }
}
