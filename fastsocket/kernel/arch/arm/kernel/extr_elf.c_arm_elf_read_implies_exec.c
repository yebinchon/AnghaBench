
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf32_hdr {int dummy; } ;


 scalar_t__ CPU_ARCH_ARMv6 ;
 int EXSTACK_DISABLE_X ;
 scalar_t__ cpu_architecture () ;

int arm_elf_read_implies_exec(const struct elf32_hdr *x, int executable_stack)
{
 if (executable_stack != EXSTACK_DISABLE_X)
  return 1;
 if (cpu_architecture() < CPU_ARCH_ARMv6)
  return 1;






 return 1;



}
