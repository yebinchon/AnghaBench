
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ ENP2611_CALEB_VIRT_BASE ;

__attribute__((used)) static u8 caleb_reg_read(int reg)
{
 u8 value;

 value = *((volatile u8 *)(ENP2611_CALEB_VIRT_BASE + reg));



 return value;
}
