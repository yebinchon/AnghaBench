
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;




 int ATC_REG_ATC_PRTY_STS ;
 int PGLUE_B_REG_PGLUE_B_PRTY_STS ;
 int _print_next_block (int ,char*) ;
 int _print_parity (struct bnx2x*,int ) ;

__attribute__((used)) static int bnx2x_check_blocks_with_parity4(struct bnx2x *bp, u32 sig,
         int par_num, bool print)
{
 int i = 0;
 u32 cur_bit = 0;
 for (i = 0; sig; i++) {
  cur_bit = ((u32)0x1 << i);
  if (sig & cur_bit) {
   switch (cur_bit) {
   case 128:
    if (print) {
     _print_next_block(par_num++, "PGLUE_B");
     _print_parity(bp,
      PGLUE_B_REG_PGLUE_B_PRTY_STS);
    }
    break;
   case 129:
    if (print) {
     _print_next_block(par_num++, "ATC");
     _print_parity(bp,
            ATC_REG_ATC_PRTY_STS);
    }
    break;
   }


   sig &= ~cur_bit;
  }
 }

 return par_num;
}
