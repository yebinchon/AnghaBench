
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int last_pagefault; } ;
struct lg_cpu {TYPE_2__* regs; TYPE_1__ arch; scalar_t__ ts; } ;
struct TYPE_4__ {int trapnum; } ;


 int MSR_IA32_SYSENTER_CS ;
 int X86_FEATURE_SEP ;
 int __KERNEL_CS ;
 scalar_t__ boot_cpu_has (int ) ;
 int current ;
 int lguest_pages (int ) ;
 int math_state_restore () ;
 int raw_smp_processor_id () ;
 int read_cr2 () ;
 int run_guest_once (struct lg_cpu*,int ) ;
 int unlazy_fpu (int ) ;
 int wrmsr (int ,int ,int ) ;

void lguest_arch_run_guest(struct lg_cpu *cpu)
{





 if (cpu->ts)
  unlazy_fpu(current);
 if (boot_cpu_has(X86_FEATURE_SEP))
  wrmsr(MSR_IA32_SYSENTER_CS, 0, 0);






 run_guest_once(cpu, lguest_pages(raw_smp_processor_id()));
  if (boot_cpu_has(X86_FEATURE_SEP))
  wrmsr(MSR_IA32_SYSENTER_CS, __KERNEL_CS, 0);







 if (cpu->regs->trapnum == 14)
  cpu->arch.last_pagefault = read_cr2();







 else if (cpu->regs->trapnum == 7)
  math_state_restore();
}
