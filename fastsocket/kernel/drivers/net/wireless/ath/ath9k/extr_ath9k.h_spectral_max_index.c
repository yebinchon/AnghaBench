
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int s8 ;



__attribute__((used)) static inline u8 spectral_max_index(u8 *bins)
{
 s8 m = (bins[2] & 0xfc) >> 2;


 if (m > 32)
  m |= 0xe0;
 else
  m &= ~0xe0;

 return m + 29;
}
