
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unw_word ;


 int R2 ;
 int UNW_DEC_PROLOGUE_GR (int ,int ,unsigned char,unsigned char,void*) ;
 int unw_decode_uleb128 (unsigned char**) ;

__attribute__((used)) static unsigned char *
unw_decode_r2 (unsigned char *dp, unsigned char code, void *arg)
{
  unsigned char byte1, mask, grsave;
  unw_word rlen;

  byte1 = *dp++;

  mask = ((code & 0x7) << 1) | ((byte1 >> 7) & 1);
  grsave = (byte1 & 0x7f);
  rlen = unw_decode_uleb128 (&dp);
  UNW_DEC_PROLOGUE_GR(R2, rlen, mask, grsave, arg);
  return dp;
}
