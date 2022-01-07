
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int smpfunc_t ;
typedef int cpumask_t ;


 scalar_t__ BTFIXUP_CALL (int (*) (struct mm_struct*,unsigned long)) ;
 int cpu_clear (int ,int ) ;
 int cpus_empty (int ) ;
 int local_flush_sig_insns (struct mm_struct*,unsigned long) ;
 int * mm_cpumask (struct mm_struct*) ;
 int smp_processor_id () ;
 int xc2 (int ,unsigned long,unsigned long) ;

void smp_flush_sig_insns(struct mm_struct *mm, unsigned long insn_addr)
{
 cpumask_t cpu_mask = *mm_cpumask(mm);
 cpu_clear(smp_processor_id(), cpu_mask);
 if (!cpus_empty(cpu_mask))
  xc2((smpfunc_t) BTFIXUP_CALL(local_flush_sig_insns), (unsigned long) mm, insn_addr);
 local_flush_sig_insns(mm, insn_addr);
}
