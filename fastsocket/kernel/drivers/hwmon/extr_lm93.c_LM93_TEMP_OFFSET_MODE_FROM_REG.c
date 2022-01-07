
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static int LM93_TEMP_OFFSET_MODE_FROM_REG(u8 sfc2, int nr)
{

 return sfc2 & (nr < 2 ? 0x10 : 0x20);
}
