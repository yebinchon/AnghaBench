
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int active; unsigned int id; } ;
struct mm_struct {int pgd; TYPE_1__ context; } ;


 unsigned int MMU_NO_CONTEXT ;
 int WARN_ON (int) ;
 int __clear_bit (unsigned int,int ) ;
 scalar_t__ __test_and_set_bit (unsigned int,unsigned long*) ;
 int context_check_map () ;
 int context_lock ;
 unsigned long* context_map ;
 struct mm_struct** context_mm ;
 unsigned int cpu_first_thread_in_core (unsigned int) ;
 unsigned int cpu_last_thread_in_core (unsigned int) ;
 unsigned int find_next_zero_bit (unsigned long*,unsigned int,unsigned int) ;
 unsigned int first_context ;
 unsigned int last_context ;
 scalar_t__ likely (int) ;
 int local_flush_tlb_mm (struct mm_struct*) ;
 unsigned int next_context ;
 int nr_free_contexts ;
 int num_online_cpus () ;
 int pr_err (char*,struct mm_struct*,unsigned int,unsigned int,struct mm_struct*) ;
 int pr_hard (char*,unsigned int,struct mm_struct*,int,unsigned int) ;
 int pr_hardcont (char*,...) ;
 int set_context (unsigned int,int ) ;
 unsigned int smp_processor_id () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int * stale_map ;
 unsigned int steal_context_smp (unsigned int) ;
 unsigned int steal_context_up (unsigned int) ;
 scalar_t__ test_bit (unsigned int,int ) ;

void switch_mmu_context(struct mm_struct *prev, struct mm_struct *next)
{
 unsigned int i, id, cpu = smp_processor_id();
 unsigned long *map;


 spin_lock(&context_lock);

 pr_hard("[%d] activating context for mm @%p, active=%d, id=%d",
  cpu, next, next->context.active, next->context.id);
 id = next->context.id;
 if (likely(id != MMU_NO_CONTEXT)) {





  goto ctxt_ok;
 }


 id = next_context;
 if (id > last_context)
  id = first_context;
 map = context_map;


 if (nr_free_contexts == 0) {
  id = steal_context_up(id);
  goto stolen;
 }
 nr_free_contexts--;


 while (__test_and_set_bit(id, map)) {
  id = find_next_zero_bit(map, last_context+1, id);
  if (id > last_context)
   id = first_context;
 }
 stolen:
 next_context = id + 1;
 context_mm[id] = next;
 next->context.id = id;
 pr_hardcont(" | new id=%d,nrf=%d", id, nr_free_contexts);

 context_check_map();
 ctxt_ok:




 if (test_bit(id, stale_map[cpu])) {
  pr_hardcont(" | stale flush %d [%d..%d]",
       id, cpu_first_thread_in_core(cpu),
       cpu_last_thread_in_core(cpu));

  local_flush_tlb_mm(next);


  for (i = cpu_first_thread_in_core(cpu);
       i <= cpu_last_thread_in_core(cpu); i++) {
   __clear_bit(id, stale_map[i]);
  }
 }


 pr_hardcont(" -> %d\n", id);
 set_context(id, next->pgd);
 spin_unlock(&context_lock);
}
