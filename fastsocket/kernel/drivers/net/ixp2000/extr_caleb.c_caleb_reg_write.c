
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int volatile u8 ;


 scalar_t__ ENP2611_CALEB_VIRT_BASE ;

__attribute__((used)) static void caleb_reg_write(int reg, u8 value)
{
 u8 dummy;



 *((volatile u8 *)(ENP2611_CALEB_VIRT_BASE + reg)) = value;

 dummy = *((volatile u8 *)ENP2611_CALEB_VIRT_BASE);
 __asm__ __volatile__("mov %0, %0" : "+r" (dummy));
}
