
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int QE_CR_SUBBLOCK_INVALID ;
 int QE_CR_SUBBLOCK_UCCSLOW1 ;
 int QE_CR_SUBBLOCK_UCCSLOW2 ;
 int QE_CR_SUBBLOCK_UCCSLOW3 ;
 int QE_CR_SUBBLOCK_UCCSLOW4 ;
 int QE_CR_SUBBLOCK_UCCSLOW5 ;
 int QE_CR_SUBBLOCK_UCCSLOW6 ;
 int QE_CR_SUBBLOCK_UCCSLOW7 ;
 int QE_CR_SUBBLOCK_UCCSLOW8 ;

u32 ucc_slow_get_qe_cr_subblock(int uccs_num)
{
 switch (uccs_num) {
 case 0: return QE_CR_SUBBLOCK_UCCSLOW1;
 case 1: return QE_CR_SUBBLOCK_UCCSLOW2;
 case 2: return QE_CR_SUBBLOCK_UCCSLOW3;
 case 3: return QE_CR_SUBBLOCK_UCCSLOW4;
 case 4: return QE_CR_SUBBLOCK_UCCSLOW5;
 case 5: return QE_CR_SUBBLOCK_UCCSLOW6;
 case 6: return QE_CR_SUBBLOCK_UCCSLOW7;
 case 7: return QE_CR_SUBBLOCK_UCCSLOW8;
 default: return QE_CR_SUBBLOCK_INVALID;
 }
}
