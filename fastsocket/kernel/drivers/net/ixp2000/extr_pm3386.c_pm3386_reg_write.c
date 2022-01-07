
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int volatile u16 ;


 scalar_t__ ENP2611_PM3386_0_VIRT_BASE ;
 scalar_t__ ENP2611_PM3386_1_VIRT_BASE ;

__attribute__((used)) static void pm3386_reg_write(int pm, int reg, u16 value)
{
 void *_reg;
 u16 dummy;



 _reg = (void *)ENP2611_PM3386_0_VIRT_BASE;
 if (pm == 1)
  _reg = (void *)ENP2611_PM3386_1_VIRT_BASE;

 *((volatile u16 *)(_reg + (reg << 1))) = value;

 dummy = *((volatile u16 *)_reg);
 __asm__ __volatile__("mov %0, %0" : "+r" (dummy));
}
