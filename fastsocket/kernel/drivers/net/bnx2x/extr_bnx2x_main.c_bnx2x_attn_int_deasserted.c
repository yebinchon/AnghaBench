
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ int_block; } ;
struct bnx2x {int attn_state; TYPE_1__ common; struct attn_route* attn_group; int sp_rtnl_task; int recovery_state; } ;
struct attn_route {int* sig; } ;


 int BAR_IGU_INTMEM ;
 int BNX2X_ERR (char*) ;
 int BNX2X_RECOVERY_INIT ;
 int BP_PORT (struct bnx2x*) ;
 int CHIP_IS_E1x (struct bnx2x*) ;
 int COMMAND_REG_ATTN_BITS_CLR ;
 int DP (int ,char*,int,...) ;
 int HC_REG_COMMAND_REG ;
 scalar_t__ HW_LOCK_RESOURCE_PORT0_ATT_MASK ;
 int IGU_CMD_ATTN_BIT_CLR_UPPER ;
 scalar_t__ INT_BLOCK_HC ;
 int MAX_DYNAMIC_ATTN_GRPS ;
 int MISC_REG_AEU_AFTER_INVERT_1_FUNC_0 ;
 int MISC_REG_AEU_AFTER_INVERT_2_FUNC_0 ;
 int MISC_REG_AEU_AFTER_INVERT_3_FUNC_0 ;
 int MISC_REG_AEU_AFTER_INVERT_4_FUNC_0 ;
 int MISC_REG_AEU_AFTER_INVERT_5_FUNC_0 ;
 int MISC_REG_AEU_MASK_ATTN_FUNC_0 ;
 int MISC_REG_AEU_MASK_ATTN_FUNC_1 ;
 int NETIF_MSG_HW ;
 void* REG_RD (struct bnx2x*,int) ;
 int REG_WR (struct bnx2x*,int,int) ;
 int bnx2x_acquire_alr (struct bnx2x*) ;
 int bnx2x_acquire_hw_lock (struct bnx2x*,scalar_t__) ;
 int bnx2x_attn_int_deasserted0 (struct bnx2x*,int) ;
 int bnx2x_attn_int_deasserted1 (struct bnx2x*,int) ;
 int bnx2x_attn_int_deasserted2 (struct bnx2x*,int) ;
 int bnx2x_attn_int_deasserted3 (struct bnx2x*,int) ;
 int bnx2x_attn_int_deasserted4 (struct bnx2x*,int) ;
 scalar_t__ bnx2x_chk_parity_attn (struct bnx2x*,int*,int) ;
 int bnx2x_int_disable (struct bnx2x*) ;
 int bnx2x_panic () ;
 int bnx2x_release_alr (struct bnx2x*) ;
 int bnx2x_release_hw_lock (struct bnx2x*,scalar_t__) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void bnx2x_attn_int_deasserted(struct bnx2x *bp, u32 deasserted)
{
 struct attn_route attn, *group_mask;
 int port = BP_PORT(bp);
 int index;
 u32 reg_addr;
 u32 val;
 u32 aeu_mask;
 bool global = 0;



 bnx2x_acquire_alr(bp);

 if (bnx2x_chk_parity_attn(bp, &global, 1)) {

  bp->recovery_state = BNX2X_RECOVERY_INIT;
  schedule_delayed_work(&bp->sp_rtnl_task, 0);

  bnx2x_int_disable(bp);






  bnx2x_release_alr(bp);
  return;
 }

 attn.sig[0] = REG_RD(bp, MISC_REG_AEU_AFTER_INVERT_1_FUNC_0 + port*4);
 attn.sig[1] = REG_RD(bp, MISC_REG_AEU_AFTER_INVERT_2_FUNC_0 + port*4);
 attn.sig[2] = REG_RD(bp, MISC_REG_AEU_AFTER_INVERT_3_FUNC_0 + port*4);
 attn.sig[3] = REG_RD(bp, MISC_REG_AEU_AFTER_INVERT_4_FUNC_0 + port*4);
 if (!CHIP_IS_E1x(bp))
  attn.sig[4] =
        REG_RD(bp, MISC_REG_AEU_AFTER_INVERT_5_FUNC_0 + port*4);
 else
  attn.sig[4] = 0;

 DP(NETIF_MSG_HW, "attn: %08x %08x %08x %08x %08x\n",
    attn.sig[0], attn.sig[1], attn.sig[2], attn.sig[3], attn.sig[4]);

 for (index = 0; index < MAX_DYNAMIC_ATTN_GRPS; index++) {
  if (deasserted & (1 << index)) {
   group_mask = &bp->attn_group[index];

   DP(NETIF_MSG_HW, "group[%d]: %08x %08x %08x %08x %08x\n",
      index,
      group_mask->sig[0], group_mask->sig[1],
      group_mask->sig[2], group_mask->sig[3],
      group_mask->sig[4]);

   bnx2x_attn_int_deasserted4(bp,
     attn.sig[4] & group_mask->sig[4]);
   bnx2x_attn_int_deasserted3(bp,
     attn.sig[3] & group_mask->sig[3]);
   bnx2x_attn_int_deasserted1(bp,
     attn.sig[1] & group_mask->sig[1]);
   bnx2x_attn_int_deasserted2(bp,
     attn.sig[2] & group_mask->sig[2]);
   bnx2x_attn_int_deasserted0(bp,
     attn.sig[0] & group_mask->sig[0]);
  }
 }

 bnx2x_release_alr(bp);

 if (bp->common.int_block == INT_BLOCK_HC)
  reg_addr = (HC_REG_COMMAND_REG + port*32 +
       COMMAND_REG_ATTN_BITS_CLR);
 else
  reg_addr = (BAR_IGU_INTMEM + IGU_CMD_ATTN_BIT_CLR_UPPER*8);

 val = ~deasserted;
 DP(NETIF_MSG_HW, "about to mask 0x%08x at %s addr 0x%x\n", val,
    (bp->common.int_block == INT_BLOCK_HC) ? "HC" : "IGU", reg_addr);
 REG_WR(bp, reg_addr, val);

 if (~bp->attn_state & deasserted)
  BNX2X_ERR("IGU ERROR\n");

 reg_addr = port ? MISC_REG_AEU_MASK_ATTN_FUNC_1 :
     MISC_REG_AEU_MASK_ATTN_FUNC_0;

 bnx2x_acquire_hw_lock(bp, HW_LOCK_RESOURCE_PORT0_ATT_MASK + port);
 aeu_mask = REG_RD(bp, reg_addr);

 DP(NETIF_MSG_HW, "aeu_mask %x  newly deasserted %x\n",
    aeu_mask, deasserted);
 aeu_mask |= (deasserted & 0x3ff);
 DP(NETIF_MSG_HW, "new mask %x\n", aeu_mask);

 REG_WR(bp, reg_addr, aeu_mask);
 bnx2x_release_hw_lock(bp, HW_LOCK_RESOURCE_PORT0_ATT_MASK + port);

 DP(NETIF_MSG_HW, "attn_state %x\n", bp->attn_state);
 bp->attn_state &= ~deasserted;
 DP(NETIF_MSG_HW, "new state %x\n", bp->attn_state);
}
