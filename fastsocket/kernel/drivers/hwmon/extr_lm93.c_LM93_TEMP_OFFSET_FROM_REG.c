
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static int LM93_TEMP_OFFSET_FROM_REG(u8 reg, int mode)
{
 return (reg & 0x0f) * (mode ? 5 : 10);
}
