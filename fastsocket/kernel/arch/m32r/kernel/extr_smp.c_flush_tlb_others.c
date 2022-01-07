
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef int cpumask_t ;
typedef int atomic_t ;


 int BUG () ;
 int BUG_ON (int) ;
 int INVALIDATE_TLB_IPI ;
 int __save_flags (unsigned long) ;
 int atomic_set_mask (unsigned long,int *) ;
 int cpu_isset (int ,int ) ;
 int cpu_online_map ;
 unsigned long* cpus_addr (int ) ;
 int cpus_and (int ,int ,int ) ;
 int cpus_empty (int ) ;
 int flush_cpumask ;
 struct mm_struct* flush_mm ;
 unsigned long flush_va ;
 struct vm_area_struct* flush_vma ;
 int mb () ;
 int send_IPI_mask (int *,int ,int ) ;
 int smp_processor_id () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tlbstate_lock ;

__attribute__((used)) static void flush_tlb_others(cpumask_t cpumask, struct mm_struct *mm,
 struct vm_area_struct *vma, unsigned long va)
{
 unsigned long *mask;
 BUG_ON(cpus_empty(cpumask));

 BUG_ON(cpu_isset(smp_processor_id(), cpumask));
 BUG_ON(!mm);


 cpus_and(cpumask, cpumask, cpu_online_map);
 if (cpus_empty(cpumask))
  return;







 spin_lock(&tlbstate_lock);

 flush_mm = mm;
 flush_vma = vma;
 flush_va = va;
 mask=cpus_addr(cpumask);
 atomic_set_mask(*mask, (atomic_t *)&flush_cpumask);





 send_IPI_mask(&cpumask, INVALIDATE_TLB_IPI, 0);

 while (!cpus_empty(flush_cpumask)) {

  mb();
 }

 flush_mm = ((void*)0);
 flush_vma = ((void*)0);
 flush_va = 0;
 spin_unlock(&tlbstate_lock);
}
