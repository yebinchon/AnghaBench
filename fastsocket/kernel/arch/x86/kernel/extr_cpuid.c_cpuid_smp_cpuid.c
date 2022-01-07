
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuid_regs {int edx; int ecx; int ebx; int eax; } ;


 int cpuid_count (int ,int ,int *,int *,int *,int *) ;

__attribute__((used)) static void cpuid_smp_cpuid(void *cmd_block)
{
 struct cpuid_regs *cmd = (struct cpuid_regs *)cmd_block;

 cpuid_count(cmd->eax, cmd->ecx,
      &cmd->eax, &cmd->ebx, &cmd->ecx, &cmd->edx);
}
