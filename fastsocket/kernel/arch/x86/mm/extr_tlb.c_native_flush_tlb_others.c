
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
struct cpumask {int dummy; } ;


 int flush_tlb_others_ipi (struct cpumask const*,struct mm_struct*,unsigned long) ;
 unsigned int get_cpu () ;
 scalar_t__ is_uv_system () ;
 int put_cpu () ;
 struct cpumask* uv_flush_tlb_others (struct cpumask const*,struct mm_struct*,unsigned long,unsigned int) ;

void native_flush_tlb_others(const struct cpumask *cpumask,
        struct mm_struct *mm, unsigned long va)
{
 if (is_uv_system()) {
  unsigned int cpu;

  cpu = get_cpu();
  cpumask = uv_flush_tlb_others(cpumask, mm, va, cpu);
  if (cpumask)
   flush_tlb_others_ipi(cpumask, mm, va);
  put_cpu();
  return;
 }
 flush_tlb_others_ipi(cpumask, mm, va);
}
