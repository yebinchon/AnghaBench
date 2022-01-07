
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unw_word ;


 int UNW_DEC_RESTORE_P (int ,unsigned char,int ,unsigned char,void*) ;
 int UNW_DEC_SPILL_REG_P (int ,unsigned char,int ,unsigned char,unsigned char,unsigned char,void*) ;
 int X4 ;
 int unw_decode_uleb128 (unsigned char**) ;

__attribute__((used)) static unsigned char *
unw_decode_x4 (unsigned char *dp, unsigned char code, void *arg)
{
  unsigned char byte1, byte2, byte3, qp, abreg, x, ytreg;
  unw_word t;

  byte1 = *dp++; byte2 = *dp++; byte3 = *dp++;
  t = unw_decode_uleb128 (&dp);

  qp = (byte1 & 0x3f);
  abreg = (byte2 & 0x7f);
  x = (byte2 >> 7) & 1;
  ytreg = byte3;

  if ((byte2 & 0x80) == 0 && byte3 == 0)
    UNW_DEC_RESTORE_P(X4, qp, t, abreg, arg);
  else
    UNW_DEC_SPILL_REG_P(X4, qp, t, abreg, x, ytreg, arg);
  return dp;
}
