
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpulaunch {unsigned long pc; unsigned long gp; unsigned long sp; unsigned long a0; int flags; } ;


 scalar_t__ CKSEG0ADDR (int ) ;
 int CPULAUNCH ;
 int LAUNCH_FGO ;
 int LAUNCH_FGONE ;
 int amon_cpu_avail (int) ;
 int pr_debug (char*,int) ;
 int smp_processor_id () ;
 int smp_rmb () ;
 int smp_wmb () ;

void amon_cpu_start(int cpu,
      unsigned long pc, unsigned long sp,
      unsigned long gp, unsigned long a0)
{
 volatile struct cpulaunch *launch =
  (struct cpulaunch *)CKSEG0ADDR(CPULAUNCH);

 if (!amon_cpu_avail(cpu))
  return;
 if (cpu == smp_processor_id()) {
  pr_debug("launch: I am cpu%d!\n", cpu);
  return;
 }
 launch += cpu;

 pr_debug("launch: starting cpu%d\n", cpu);

 launch->pc = pc;
 launch->gp = gp;
 launch->sp = sp;
 launch->a0 = a0;

 smp_wmb();
 launch->flags |= LAUNCH_FGO;
 smp_wmb();

 while ((launch->flags & LAUNCH_FGONE) == 0)
  ;
 smp_rmb();
 pr_debug("launch: cpu%d gone!\n", cpu);
}
