
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;


 unsigned long long PAGE_SIZE ;
 unsigned long cpu_asid (unsigned int,int ) ;
 unsigned long get_asid () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 unsigned int smp_processor_id () ;
 int switch_and_save_asid (unsigned long) ;

__attribute__((used)) static void sh64_icache_inv_user_page(struct vm_area_struct *vma, unsigned long eaddr)
{


 unsigned int cpu = smp_processor_id();
 unsigned long long addr, end_addr;
 unsigned long flags = 0;
 unsigned long running_asid, vma_asid;
 addr = eaddr;
 end_addr = addr + PAGE_SIZE;
 running_asid = get_asid();
 vma_asid = cpu_asid(cpu, vma->vm_mm);
 if (running_asid != vma_asid) {
  local_irq_save(flags);
  switch_and_save_asid(vma_asid);
 }
 while (addr < end_addr) {

  __asm__ __volatile__("icbi %0,  0" : : "r" (addr));
  __asm__ __volatile__("icbi %0, 32" : : "r" (addr));
  __asm__ __volatile__("icbi %0, 64" : : "r" (addr));
  __asm__ __volatile__("icbi %0, 96" : : "r" (addr));
  addr += 128;
 }
 if (running_asid != vma_asid) {
  switch_and_save_asid(running_asid);
  local_irq_restore(flags);
 }
}
