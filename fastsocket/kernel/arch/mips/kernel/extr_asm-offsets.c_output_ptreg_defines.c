
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int BLANK () ;
 int COMMENT (char*) ;
 int DEFINE (int ,int) ;
 int OFFSET (int ,int ,int ) ;
 int PT_ACX ;
 int PT_BVADDR ;
 int PT_CAUSE ;
 int PT_EPC ;
 int PT_HI ;
 int PT_LO ;
 int PT_MPL ;
 int PT_MTP ;
 int PT_R0 ;
 int PT_R1 ;
 int PT_R10 ;
 int PT_R11 ;
 int PT_R12 ;
 int PT_R13 ;
 int PT_R14 ;
 int PT_R15 ;
 int PT_R16 ;
 int PT_R17 ;
 int PT_R18 ;
 int PT_R19 ;
 int PT_R2 ;
 int PT_R20 ;
 int PT_R21 ;
 int PT_R22 ;
 int PT_R23 ;
 int PT_R24 ;
 int PT_R25 ;
 int PT_R26 ;
 int PT_R27 ;
 int PT_R28 ;
 int PT_R29 ;
 int PT_R3 ;
 int PT_R30 ;
 int PT_R31 ;
 int PT_R4 ;
 int PT_R5 ;
 int PT_R6 ;
 int PT_R7 ;
 int PT_R8 ;
 int PT_R9 ;
 int PT_SIZE ;
 int PT_STATUS ;
 int PT_TCSTATUS ;
 int acx ;
 int cp0_badvaddr ;
 int cp0_cause ;
 int cp0_epc ;
 int cp0_status ;
 int cp0_tcstatus ;
 int hi ;
 int lo ;
 int mpl ;
 int mtp ;
 int pt_regs ;
 int * regs ;

void output_ptreg_defines(void)
{
 COMMENT("MIPS pt_regs offsets.");
 OFFSET(PT_R0, pt_regs, regs[0]);
 OFFSET(PT_R1, pt_regs, regs[1]);
 OFFSET(PT_R2, pt_regs, regs[2]);
 OFFSET(PT_R3, pt_regs, regs[3]);
 OFFSET(PT_R4, pt_regs, regs[4]);
 OFFSET(PT_R5, pt_regs, regs[5]);
 OFFSET(PT_R6, pt_regs, regs[6]);
 OFFSET(PT_R7, pt_regs, regs[7]);
 OFFSET(PT_R8, pt_regs, regs[8]);
 OFFSET(PT_R9, pt_regs, regs[9]);
 OFFSET(PT_R10, pt_regs, regs[10]);
 OFFSET(PT_R11, pt_regs, regs[11]);
 OFFSET(PT_R12, pt_regs, regs[12]);
 OFFSET(PT_R13, pt_regs, regs[13]);
 OFFSET(PT_R14, pt_regs, regs[14]);
 OFFSET(PT_R15, pt_regs, regs[15]);
 OFFSET(PT_R16, pt_regs, regs[16]);
 OFFSET(PT_R17, pt_regs, regs[17]);
 OFFSET(PT_R18, pt_regs, regs[18]);
 OFFSET(PT_R19, pt_regs, regs[19]);
 OFFSET(PT_R20, pt_regs, regs[20]);
 OFFSET(PT_R21, pt_regs, regs[21]);
 OFFSET(PT_R22, pt_regs, regs[22]);
 OFFSET(PT_R23, pt_regs, regs[23]);
 OFFSET(PT_R24, pt_regs, regs[24]);
 OFFSET(PT_R25, pt_regs, regs[25]);
 OFFSET(PT_R26, pt_regs, regs[26]);
 OFFSET(PT_R27, pt_regs, regs[27]);
 OFFSET(PT_R28, pt_regs, regs[28]);
 OFFSET(PT_R29, pt_regs, regs[29]);
 OFFSET(PT_R30, pt_regs, regs[30]);
 OFFSET(PT_R31, pt_regs, regs[31]);
 OFFSET(PT_LO, pt_regs, lo);
 OFFSET(PT_HI, pt_regs, hi);



 OFFSET(PT_EPC, pt_regs, cp0_epc);
 OFFSET(PT_BVADDR, pt_regs, cp0_badvaddr);
 OFFSET(PT_STATUS, pt_regs, cp0_status);
 OFFSET(PT_CAUSE, pt_regs, cp0_cause);







 DEFINE(PT_SIZE, sizeof(struct pt_regs));
 BLANK();
}
