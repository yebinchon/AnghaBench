
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int le16_to_cpu (int) ;

__attribute__((used)) static int LM93_FAN_FROM_REG(u16 regs)
{
 const u16 count = le16_to_cpu(regs) >> 2;
 return count==0 ? -1 : count==0x3fff ? 0: 1350000 / count;
}
