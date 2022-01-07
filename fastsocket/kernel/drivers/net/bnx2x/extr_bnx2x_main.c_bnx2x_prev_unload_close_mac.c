
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct bnx2x_mac_vals {int bmac_addr; int umac_addr; int xmac_addr; int emac_addr; int* bmac_val; void* umac_val; void* xmac_val; void* emac_val; } ;
struct bnx2x {int dummy; } ;


 int BIGMAC2_REGISTER_BMAC_CONTROL ;
 int BIGMAC_REGISTER_BMAC_CONTROL ;
 int BMAC_CONTROL_RX_ENABLE ;
 int BNX2X_DEV_INFO (char*) ;
 int BP_PORT (struct bnx2x*) ;
 scalar_t__ CHIP_IS_E2 (struct bnx2x*) ;
 int CHIP_IS_E3 (struct bnx2x*) ;
 int GRCBASE_UMAC0 ;
 int GRCBASE_UMAC1 ;
 int GRCBASE_XMAC0 ;
 int GRCBASE_XMAC1 ;
 int MISC_REGISTERS_RESET_REG_2_RST_BMAC0 ;
 int MISC_REGISTERS_RESET_REG_2_UMAC0 ;
 int MISC_REGISTERS_RESET_REG_2_XMAC ;
 int MISC_REG_RESET_REG_2 ;
 int NIG_REG_BMAC0_REGS_OUT_EN ;
 int NIG_REG_INGRESS_BMAC0_MEM ;
 int NIG_REG_INGRESS_BMAC1_MEM ;
 int NIG_REG_NIG_EMAC0_EN ;
 void* REG_RD (struct bnx2x*,int) ;
 int REG_WR (struct bnx2x*,int,int) ;
 int UMAC_REG_COMMAND_CONFIG ;
 int XMAC_REG_CTRL ;
 int XMAC_REG_PFC_CTRL_HI ;
 int msleep (int) ;

__attribute__((used)) static void bnx2x_prev_unload_close_mac(struct bnx2x *bp,
     struct bnx2x_mac_vals *vals)
{
 u32 val, base_addr, offset, mask, reset_reg;
 bool mac_stopped = 0;
 u8 port = BP_PORT(bp);


 vals->bmac_addr = 0;
 vals->umac_addr = 0;
 vals->xmac_addr = 0;
 vals->emac_addr = 0;

 reset_reg = REG_RD(bp, MISC_REG_RESET_REG_2);

 if (!CHIP_IS_E3(bp)) {
  val = REG_RD(bp, NIG_REG_BMAC0_REGS_OUT_EN + port * 4);
  mask = MISC_REGISTERS_RESET_REG_2_RST_BMAC0 << port;
  if ((mask & reset_reg) && val) {
   u32 wb_data[2];
   BNX2X_DEV_INFO("Disable bmac Rx\n");
   base_addr = BP_PORT(bp) ? NIG_REG_INGRESS_BMAC1_MEM
      : NIG_REG_INGRESS_BMAC0_MEM;
   offset = CHIP_IS_E2(bp) ? BIGMAC2_REGISTER_BMAC_CONTROL
      : BIGMAC_REGISTER_BMAC_CONTROL;







   wb_data[0] = REG_RD(bp, base_addr + offset);
   wb_data[1] = REG_RD(bp, base_addr + offset + 0x4);
   vals->bmac_addr = base_addr + offset;
   vals->bmac_val[0] = wb_data[0];
   vals->bmac_val[1] = wb_data[1];
   wb_data[0] &= ~BMAC_CONTROL_RX_ENABLE;
   REG_WR(bp, vals->bmac_addr, wb_data[0]);
   REG_WR(bp, vals->bmac_addr + 0x4, wb_data[1]);
  }
  BNX2X_DEV_INFO("Disable emac Rx\n");
  vals->emac_addr = NIG_REG_NIG_EMAC0_EN + BP_PORT(bp)*4;
  vals->emac_val = REG_RD(bp, vals->emac_addr);
  REG_WR(bp, vals->emac_addr, 0);
  mac_stopped = 1;
 } else {
  if (reset_reg & MISC_REGISTERS_RESET_REG_2_XMAC) {
   BNX2X_DEV_INFO("Disable xmac Rx\n");
   base_addr = BP_PORT(bp) ? GRCBASE_XMAC1 : GRCBASE_XMAC0;
   val = REG_RD(bp, base_addr + XMAC_REG_PFC_CTRL_HI);
   REG_WR(bp, base_addr + XMAC_REG_PFC_CTRL_HI,
          val & ~(1 << 1));
   REG_WR(bp, base_addr + XMAC_REG_PFC_CTRL_HI,
          val | (1 << 1));
   vals->xmac_addr = base_addr + XMAC_REG_CTRL;
   vals->xmac_val = REG_RD(bp, vals->xmac_addr);
   REG_WR(bp, vals->xmac_addr, 0);
   mac_stopped = 1;
  }
  mask = MISC_REGISTERS_RESET_REG_2_UMAC0 << port;
  if (mask & reset_reg) {
   BNX2X_DEV_INFO("Disable umac Rx\n");
   base_addr = BP_PORT(bp) ? GRCBASE_UMAC1 : GRCBASE_UMAC0;
   vals->umac_addr = base_addr + UMAC_REG_COMMAND_CONFIG;
   vals->umac_val = REG_RD(bp, vals->umac_addr);
   REG_WR(bp, vals->umac_addr, 0);
   mac_stopped = 1;
  }
 }

 if (mac_stopped)
  msleep(20);
}
