
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trap_per_cpu {scalar_t__ pgd_paddr; } ;
struct mm_struct {int pgd; } ;


 scalar_t__ __pa (int ) ;
 size_t raw_smp_processor_id () ;
 struct trap_per_cpu* trap_block ;
 int tsb_context_switch (struct mm_struct*) ;

__attribute__((used)) static void tsb_sync(void *info)
{
 struct trap_per_cpu *tp = &trap_block[raw_smp_processor_id()];
 struct mm_struct *mm = info;







 if (tp->pgd_paddr == __pa(mm->pgd))
  tsb_context_switch(mm);
}
