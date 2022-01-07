
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int LM93_TEMP_OFFSET_TO_REG (int,int) ;

__attribute__((used)) static u8 LM93_TEMP_AUTO_OFFSET_TO_REG(u8 old, int off, int nr, int mode)
{
 u8 new = LM93_TEMP_OFFSET_TO_REG(off, mode);


 if (nr < 2)
  return (old & 0xf0) | (new & 0x0f);


 else
  return (new << 4 & 0xf0) | (old & 0x0f);
}
