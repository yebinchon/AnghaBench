
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int getbit (int*,int) ;

int ir_decode_pulsedistance(u32 *samples, int count, int low, int high)
{
 int i,last,bit,len;
 u32 curBit;
 u32 value;


 for (i = len = 0; i < count * 32; i++) {
  bit = getbit(samples,i);
  if (bit) {
   len++;
  } else {
   if (len >= 29)
    break;
   len = 0;
  }
 }


 if (len < 29)
  return 0xffffffff;


 for (len = 0; i < count * 32; i++) {
  bit = getbit(samples,i);
  if (bit) {
   break;
  } else {
   len++;
  }
 }


 if (len < 7)
  return 0xffffffff;


 len = 0;
 last = 1;
 value = 0; curBit = 1;
 for (; i < count * 32; i++) {
  bit = getbit(samples,i);
  if (last) {
   if(bit) {
    continue;
   } else {
    len = 1;
   }
  } else {
   if (bit) {
    if (len > (low + high) /2)
     value |= curBit;
    curBit <<= 1;
    if (curBit == 1)
     break;
   } else {
    len++;
   }
  }
  last = bit;
 }

 return value;
}
