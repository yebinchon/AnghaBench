
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unw_word ;


 int P2 ;
 int P3 ;
 int P4 ;
 int P5 ;
 int UNW_DEC_BAD_CODE (unsigned char) ;
 int UNW_DEC_BR_GR (int ,unsigned char,unsigned char,void*) ;
 int UNW_DEC_FRGR_MEM (int ,int,int,void*) ;
 int UNW_DEC_PRIUNAT_GR (int ,unsigned char,void*) ;
 int UNW_DEC_REG_GR (int ,int ,unsigned char,void*) ;
 int UNW_DEC_RP_BR (int ,unsigned char,void*) ;
 int UNW_DEC_SPILL_MASK (int ,unsigned char*,void*) ;
 int UNW_REG_BSP ;
 int UNW_REG_BSPSTORE ;
 int UNW_REG_FPSR ;
 int UNW_REG_LC ;
 int UNW_REG_PFS ;
 int UNW_REG_PR ;
 int UNW_REG_PSP ;
 int UNW_REG_RNAT ;
 int UNW_REG_RP ;
 int UNW_REG_UNAT ;

__attribute__((used)) static unsigned char *
unw_decode_p2_p5 (unsigned char *dp, unsigned char code, void *arg)
{
  if ((code & 0x10) == 0)
    {
      unsigned char byte1 = *dp++;

      UNW_DEC_BR_GR(P2, ((code & 0xf) << 1) | ((byte1 >> 7) & 1),
      (byte1 & 0x7f), arg);
    }
  else if ((code & 0x08) == 0)
    {
      unsigned char byte1 = *dp++, r, dst;

      r = ((code & 0x7) << 1) | ((byte1 >> 7) & 1);
      dst = (byte1 & 0x7f);
      switch (r)
 {
 case 0: UNW_DEC_REG_GR(P3, UNW_REG_PSP, dst, arg); break;
 case 1: UNW_DEC_REG_GR(P3, UNW_REG_RP, dst, arg); break;
 case 2: UNW_DEC_REG_GR(P3, UNW_REG_PFS, dst, arg); break;
 case 3: UNW_DEC_REG_GR(P3, UNW_REG_PR, dst, arg); break;
 case 4: UNW_DEC_REG_GR(P3, UNW_REG_UNAT, dst, arg); break;
 case 5: UNW_DEC_REG_GR(P3, UNW_REG_LC, dst, arg); break;
 case 6: UNW_DEC_RP_BR(P3, dst, arg); break;
 case 7: UNW_DEC_REG_GR(P3, UNW_REG_RNAT, dst, arg); break;
 case 8: UNW_DEC_REG_GR(P3, UNW_REG_BSP, dst, arg); break;
 case 9: UNW_DEC_REG_GR(P3, UNW_REG_BSPSTORE, dst, arg); break;
 case 10: UNW_DEC_REG_GR(P3, UNW_REG_FPSR, dst, arg); break;
 case 11: UNW_DEC_PRIUNAT_GR(P3, dst, arg); break;
 default: UNW_DEC_BAD_CODE(r); break;
 }
    }
  else if ((code & 0x7) == 0)
    UNW_DEC_SPILL_MASK(P4, dp, arg);
  else if ((code & 0x7) == 1)
    {
      unw_word grmask, frmask, byte1, byte2, byte3;

      byte1 = *dp++; byte2 = *dp++; byte3 = *dp++;
      grmask = ((byte1 >> 4) & 0xf);
      frmask = ((byte1 & 0xf) << 16) | (byte2 << 8) | byte3;
      UNW_DEC_FRGR_MEM(P5, grmask, frmask, arg);
    }
  else
    UNW_DEC_BAD_CODE(code);
  return dp;
}
