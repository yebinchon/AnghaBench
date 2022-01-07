
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unw_word ;


 int UNW_DEC_SPILL_PSPREL_P (int ,unsigned char,int ,unsigned char,int ,void*) ;
 int UNW_DEC_SPILL_SPREL_P (int ,unsigned char,int ,unsigned char,int ,void*) ;
 int X3 ;
 int unw_decode_uleb128 (unsigned char**) ;

__attribute__((used)) static unsigned char *
unw_decode_x3 (unsigned char *dp, unsigned char code, void *arg)
{
  unsigned char byte1, byte2, abreg, qp;
  unw_word t, off;

  byte1 = *dp++; byte2 = *dp++;
  t = unw_decode_uleb128 (&dp);
  off = unw_decode_uleb128 (&dp);

  qp = (byte1 & 0x3f);
  abreg = (byte2 & 0x7f);

  if (byte1 & 0x80)
    UNW_DEC_SPILL_SPREL_P(X3, qp, t, abreg, off, arg);
  else
    UNW_DEC_SPILL_PSPREL_P(X3, qp, t, abreg, off, arg);
  return dp;
}
