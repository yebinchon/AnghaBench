
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int QE_CR_SUBBLOCK_INVALID ;
 int QE_CR_SUBBLOCK_UCCFAST1 ;
 int QE_CR_SUBBLOCK_UCCFAST2 ;
 int QE_CR_SUBBLOCK_UCCFAST3 ;
 int QE_CR_SUBBLOCK_UCCFAST4 ;
 int QE_CR_SUBBLOCK_UCCFAST5 ;
 int QE_CR_SUBBLOCK_UCCFAST6 ;
 int QE_CR_SUBBLOCK_UCCFAST7 ;
 int QE_CR_SUBBLOCK_UCCFAST8 ;

u32 ucc_fast_get_qe_cr_subblock(int uccf_num)
{
 switch (uccf_num) {
 case 0: return QE_CR_SUBBLOCK_UCCFAST1;
 case 1: return QE_CR_SUBBLOCK_UCCFAST2;
 case 2: return QE_CR_SUBBLOCK_UCCFAST3;
 case 3: return QE_CR_SUBBLOCK_UCCFAST4;
 case 4: return QE_CR_SUBBLOCK_UCCFAST5;
 case 5: return QE_CR_SUBBLOCK_UCCFAST6;
 case 6: return QE_CR_SUBBLOCK_UCCFAST7;
 case 7: return QE_CR_SUBBLOCK_UCCFAST8;
 default: return QE_CR_SUBBLOCK_INVALID;
 }
}
