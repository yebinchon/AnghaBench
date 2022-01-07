
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef int s8 ;


 size_t SPOFF (int ) ;
 int SSB_SPROM1_AGAIN ;

__attribute__((used)) static s8 r123_extract_antgain(u8 sprom_revision, const u16 *in,
          u16 mask, u16 shift)
{
 u16 v;
 u8 gain;

 v = in[SPOFF(SSB_SPROM1_AGAIN)];
 gain = (v & mask) >> shift;
 if (gain == 0xFF)
  gain = 2;
 if (sprom_revision == 1) {

  gain <<= 2;
 } else {

  gain = ((gain & 0xC0) >> 6) | ((gain & 0x3F) << 2);
 }

 return (s8)gain;
}
