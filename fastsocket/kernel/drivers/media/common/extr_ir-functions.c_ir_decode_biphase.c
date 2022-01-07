
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int getbit (int*,int) ;

int ir_decode_biphase(u32 *samples, int count, int low, int high)
{
 int i,last,bit,len,flips;
 u32 value;


 for (i = 0; i < 32; i++) {
  bit = getbit(samples,i);
  if (bit)
   break;
 }


 len = 0;
 flips = 0;
 value = 1;
 for (; i < count * 32; i++) {
  if (len > high)
   break;
  if (flips > 1)
   break;
  last = bit;
  bit = getbit(samples,i);
  if (last == bit) {
   len++;
   continue;
  }
  if (len < low) {
   len++;
   flips++;
   continue;
  }
  value <<= 1;
  value |= bit;
  flips = 0;
  len = 1;
 }
 return value;
}
