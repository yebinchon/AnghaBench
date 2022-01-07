
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DF_SWAP32 ;
 int memset (void*,int,int) ;

void FillTSBuffer(void *Buffer, int Length, u32 Flags)
{
 u32 *ptr = Buffer;

 memset(Buffer, 0xff, Length);
 while (Length > 0) {
  if (Flags & DF_SWAP32)
   *ptr = 0x471FFF10;
  else
   *ptr = 0x10FF1F47;
  ptr += (188 / 4);
  Length -= 188;
 }
}
