
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 size_t KS_AGC ;
 size_t KS_BRT ;
 size_t KS_CCDAT1 ;
 size_t KS_CCDAT2 ;
 size_t KS_CDEM ;
 size_t KS_CHROMA ;
 size_t KS_CHROMB ;
 size_t KS_CMDA ;
 size_t KS_CMDB ;
 size_t KS_CMDC ;
 size_t KS_CMDD ;
 size_t KS_CMDE ;
 size_t KS_CMDF ;
 size_t KS_CON ;
 size_t KS_CTRACK ;
 size_t KS_DEMOD ;
 size_t KS_HAVB ;
 size_t KS_HAVE ;
 size_t KS_HS1B ;
 size_t KS_HS1E ;
 size_t KS_HS2B ;
 size_t KS_HS2E ;
 size_t KS_HSCLH ;
 size_t KS_HSCLL ;
 size_t KS_HUE ;
 size_t KS_HXTRA ;
 size_t KS_INVALU ;
 size_t KS_INVALV ;
 size_t KS_INVALY ;
 size_t KS_LUMA ;
 size_t KS_OFMTA ;
 size_t KS_OFMTB ;
 size_t KS_POLCTL ;
 size_t KS_PORTAB ;
 size_t KS_REFCOD ;
 size_t KS_SAT ;
 size_t KS_SHS1A ;
 size_t KS_SHS1B ;
 size_t KS_SHS1C ;
 size_t KS_TESTA ;
 size_t KS_TTFRAM ;
 size_t KS_UGAIN ;
 size_t KS_UNUSEU ;
 size_t KS_UNUSEV ;
 size_t KS_UNUSEY ;
 size_t KS_USREAV ;
 size_t KS_USRSAV ;
 size_t KS_UVOFFH ;
 size_t KS_UVOFFL ;
 size_t KS_VAVB ;
 size_t KS_VAVE ;
 size_t KS_VBICTL ;
 size_t KS_VBIL118 ;
 size_t KS_VBIL1512 ;
 size_t KS_VBIL30 ;
 size_t KS_VBIL74 ;
 size_t KS_VERTIA ;
 size_t KS_VERTIB ;
 size_t KS_VERTIC ;
 size_t KS_VGAIN ;
 size_t KS_VSCLH ;
 size_t KS_VSCLL ;
 size_t KS_VSDEL ;
 int* reg_defaults ;

__attribute__((used)) static void init_reg_defaults(void)
{
 static int initialized;
 u8 *table = reg_defaults;

 if (initialized)
  return;
 initialized = 1;

 table[KS_CMDA] = 0x2c;
 table[KS_CMDB] = 0x12;
 table[KS_CMDC] = 0x00;

 table[KS_CMDD] = 0x01;
 table[KS_HAVB] = 0x00;
 table[KS_HAVE] = 0x00;
 table[KS_HS1B] = 0x10;
 table[KS_HS1E] = 0x00;
 table[KS_HS2B] = 0x00;
 table[KS_HS2E] = 0x00;
 table[KS_AGC] = 0x53;
 table[KS_HXTRA] = 0x00;
 table[KS_CDEM] = 0x00;
 table[KS_PORTAB] = 0x0f;
 table[KS_LUMA] = 0x01;
 table[KS_CON] = 0x00;
 table[KS_BRT] = 0x00;
 table[KS_CHROMA] = 0x2a;
 table[KS_CHROMB] = 0x90;
 table[KS_DEMOD] = 0x00;
 table[KS_SAT] = 0x00;
 table[KS_HUE] = 0x00;
 table[KS_VERTIA] = 0x00;

 table[KS_VERTIB] = 0x12;
 table[KS_VERTIC] = 0x0b;
 table[KS_HSCLL] = 0x00;
 table[KS_HSCLH] = 0x00;
 table[KS_VSCLL] = 0x00;
 table[KS_VSCLH] = 0x00;

 table[KS_OFMTA] = 0x30;
 table[KS_OFMTB] = 0x00;

 table[KS_VBICTL] = 0x5d;
 table[KS_CCDAT2] = 0x00;
 table[KS_CCDAT1] = 0x00;
 table[KS_VBIL30] = 0xa8;
 table[KS_VBIL74] = 0xaa;
 table[KS_VBIL118] = 0x2a;
 table[KS_VBIL1512] = 0x00;
 table[KS_TTFRAM] = 0x00;
 table[KS_TESTA] = 0x00;
 table[KS_UVOFFH] = 0x00;
 table[KS_UVOFFL] = 0x00;
 table[KS_UGAIN] = 0x00;
 table[KS_VGAIN] = 0x00;
 table[KS_VAVB] = 0x07;
 table[KS_VAVE] = 0x00;
 table[KS_CTRACK] = 0x00;
 table[KS_POLCTL] = 0x41;
 table[KS_REFCOD] = 0x80;
 table[KS_INVALY] = 0x10;
 table[KS_INVALU] = 0x80;
 table[KS_INVALV] = 0x80;
 table[KS_UNUSEY] = 0x10;
 table[KS_UNUSEU] = 0x80;
 table[KS_UNUSEV] = 0x80;
 table[KS_USRSAV] = 0x00;
 table[KS_USREAV] = 0x00;
 table[KS_SHS1A] = 0x00;

 table[KS_SHS1B] = 0x80;
 table[KS_SHS1C] = 0x00;
 table[KS_CMDE] = 0x00;
 table[KS_VSDEL] = 0x00;


 table[KS_CMDF] = 0x02;
}
