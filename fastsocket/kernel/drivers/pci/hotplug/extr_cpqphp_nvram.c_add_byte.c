
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;



__attribute__((used)) static u32 add_byte( u32 **p_buffer, u8 value, u32 *used, u32 *avail)
{
 u8 **tByte;

 if ((*used + 1) > *avail)
  return(1);

 *((u8*)*p_buffer) = value;
 tByte = (u8**)p_buffer;
 (*tByte)++;
 *used+=1;
 return(0);
}
