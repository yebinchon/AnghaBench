
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;
 int CDU_REG_CDU_PRTY_STS ;
 int CFC_REG_CFC_PRTY_STS ;
 int CHIP_IS_E1x (struct bnx2x*) ;
 int CSEM_REG_CSEM_PRTY_STS_0 ;
 int CSEM_REG_CSEM_PRTY_STS_1 ;
 int DMAE_REG_DMAE_PRTY_STS ;
 int HC_REG_HC_PRTY_STS ;
 int IGU_REG_IGU_PRTY_STS ;
 int MISC_REG_MISC_PRTY_STS ;
 int PXP2_REG_PXP2_PRTY_STS_0 ;
 int PXP2_REG_PXP2_PRTY_STS_1 ;
 int PXP_REG_PXP_PRTY_STS ;
 int _print_next_block (int ,char*) ;
 int _print_parity (struct bnx2x*,int ) ;

__attribute__((used)) static int bnx2x_check_blocks_with_parity2(struct bnx2x *bp, u32 sig,
         int par_num, bool print)
{
 int i = 0;
 u32 cur_bit = 0;
 for (i = 0; sig; i++) {
  cur_bit = ((u32)0x1 << i);
  if (sig & cur_bit) {
   switch (cur_bit) {
   case 133:
    if (print) {
     _print_next_block(par_num++, "CSEMI");
     _print_parity(bp,
            CSEM_REG_CSEM_PRTY_STS_0);
     _print_parity(bp,
            CSEM_REG_CSEM_PRTY_STS_1);
    }
    break;
   case 129:
    if (print) {
     _print_next_block(par_num++, "PXP");
     _print_parity(bp, PXP_REG_PXP_PRTY_STS);
     _print_parity(bp,
            PXP2_REG_PXP2_PRTY_STS_0);
     _print_parity(bp,
            PXP2_REG_PXP2_PRTY_STS_1);
    }
    break;
   case 128:
    if (print)
     _print_next_block(par_num++,
     "PXPPCICLOCKCLIENT");
    break;
   case 134:
    if (print) {
     _print_next_block(par_num++, "CFC");
     _print_parity(bp,
            CFC_REG_CFC_PRTY_STS);
    }
    break;
   case 135:
    if (print) {
     _print_next_block(par_num++, "CDU");
     _print_parity(bp, CDU_REG_CDU_PRTY_STS);
    }
    break;
   case 132:
    if (print) {
     _print_next_block(par_num++, "DMAE");
     _print_parity(bp,
            DMAE_REG_DMAE_PRTY_STS);
    }
    break;
   case 131:
    if (print) {
     _print_next_block(par_num++, "IGU");
     if (CHIP_IS_E1x(bp))
      _print_parity(bp,
       HC_REG_HC_PRTY_STS);
     else
      _print_parity(bp,
       IGU_REG_IGU_PRTY_STS);
    }
    break;
   case 130:
    if (print) {
     _print_next_block(par_num++, "MISC");
     _print_parity(bp,
            MISC_REG_MISC_PRTY_STS);
    }
    break;
   }


   sig &= ~cur_bit;
  }
 }

 return par_num;
}
