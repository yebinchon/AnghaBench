
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;


 int IA32_CR0 ;
 scalar_t__ IA32_CR4 ;
 int _IA64_REG_AR_CFLAG ;
 int ia64_setreg (int ,int) ;

void
ia32_cpu_init (void)
{

 ia64_setreg(_IA64_REG_AR_CFLAG, (((ulong) IA32_CR4 << 32) | IA32_CR0));
}
