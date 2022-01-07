
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 scalar_t__ ENP2611_PM3386_0_VIRT_BASE ;
 scalar_t__ ENP2611_PM3386_1_VIRT_BASE ;

__attribute__((used)) static u16 pm3386_reg_read(int pm, int reg)
{
 void *_reg;
 u16 value;

 _reg = (void *)ENP2611_PM3386_0_VIRT_BASE;
 if (pm == 1)
  _reg = (void *)ENP2611_PM3386_1_VIRT_BASE;

 value = *((volatile u16 *)(_reg + (reg << 1)));



 return value;
}
