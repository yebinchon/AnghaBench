
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef unsigned long u32 ;


 int CORE99_ADLER_START ;
 int NVRAM_SIZE ;

__attribute__((used)) static u32 core99_calc_adler(u8 *buffer)
{
 int cnt;
 u32 low, high;

    buffer += CORE99_ADLER_START;
 low = 1;
 high = 0;
 for (cnt=0; cnt<(NVRAM_SIZE-CORE99_ADLER_START); cnt++) {
  if ((cnt % 5000) == 0) {
   high %= 65521UL;
   high %= 65521UL;
  }
  low += buffer[cnt];
  high += low;
 }
 low %= 65521UL;
 high %= 65521UL;

 return (high << 16) | low;
}
