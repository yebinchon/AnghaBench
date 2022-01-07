
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int CPU_MASK_NONE ;
 int cpus_in_sr ;

void crash_kexec_secondary(struct pt_regs *regs)
{
 cpus_in_sr = CPU_MASK_NONE;
}
