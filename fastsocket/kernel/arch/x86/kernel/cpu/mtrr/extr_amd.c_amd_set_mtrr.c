
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
typedef int mtrr_type ;


 int MSR_K6_UWCCR ;
 int PAGE_SHIFT ;
 int rdmsr (int ,unsigned long,unsigned long) ;
 int wbinvd () ;
 int wrmsr (int ,unsigned long,unsigned long) ;

__attribute__((used)) static void
amd_set_mtrr(unsigned int reg, unsigned long base, unsigned long size, mtrr_type type)
{
 u32 regs[2];




 rdmsr(MSR_K6_UWCCR, regs[0], regs[1]);



 if (size == 0) {
  regs[reg] = 0;
 } else {
  regs[reg] = (-size >> (15 - PAGE_SHIFT) & 0x0001FFFC)
      | (base << PAGE_SHIFT) | (type + 1);
 }





 wbinvd();
 wrmsr(MSR_K6_UWCCR, regs[0], regs[1]);
}
