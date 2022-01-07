
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 scalar_t__ __KSTK_TOS (struct task_struct*) ;
 int cpu_logical_map (int) ;
 int mb () ;
 int octeon_processor_boot ;
 unsigned long octeon_processor_gp ;
 scalar_t__ octeon_processor_sp ;
 int pr_err (char*) ;
 int pr_info (char*,int,int ) ;
 scalar_t__ task_thread_info (struct task_struct*) ;
 int udelay (int) ;

__attribute__((used)) static void octeon_boot_secondary(int cpu, struct task_struct *idle)
{
 int count;

 pr_info("SMP: Booting CPU%02d (CoreId %2d)...\n", cpu,
  cpu_logical_map(cpu));

 octeon_processor_sp = __KSTK_TOS(idle);
 octeon_processor_gp = (unsigned long)(task_thread_info(idle));
 octeon_processor_boot = cpu_logical_map(cpu);
 mb();

 count = 10000;
 while (octeon_processor_sp && count) {

  udelay(1);
  count--;
 }
 if (count == 0)
  pr_err("Secondary boot timeout\n");
}
