
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;


 int BNX2X_ERR (char*,...) ;
 int CHIP_IS_E1x (struct bnx2x*) ;
 scalar_t__ CHIP_IS_E3 (struct bnx2x*) ;
 int EAGAIN ;
 int MISC_REG_UNPREPARED ;
 int PGLUE_B_REG_TAGS_63_32 ;
 int PXP2_REG_PGL_EXP_ROM2 ;
 int PXP2_REG_RD_BLK_CNT ;
 int PXP2_REG_RD_PORT_IS_IDLE_0 ;
 int PXP2_REG_RD_PORT_IS_IDLE_1 ;
 int PXP2_REG_RD_SR_CNT ;
 int REG_RD (struct bnx2x*,int ) ;
 int REG_WR (struct bnx2x*,int ,int ) ;
 int barrier () ;
 scalar_t__ bnx2x_er_poll_igu_vq (struct bnx2x*) ;
 int bnx2x_process_kill_chip_reset (struct bnx2x*,int) ;
 int bnx2x_pxp_prep (struct bnx2x*) ;
 scalar_t__ bnx2x_reset_mcp_comp (struct bnx2x*,int) ;
 int bnx2x_reset_mcp_prep (struct bnx2x*,int*) ;
 int bnx2x_set_234_gates (struct bnx2x*,int) ;
 int mmiowb () ;
 int usleep_range (int,int) ;

__attribute__((used)) static int bnx2x_process_kill(struct bnx2x *bp, bool global)
{
 int cnt = 1000;
 u32 val = 0;
 u32 sr_cnt, blk_cnt, port_is_idle_0, port_is_idle_1, pgl_exp_rom2;
 u32 tags_63_32 = 0;


 do {
  sr_cnt = REG_RD(bp, PXP2_REG_RD_SR_CNT);
  blk_cnt = REG_RD(bp, PXP2_REG_RD_BLK_CNT);
  port_is_idle_0 = REG_RD(bp, PXP2_REG_RD_PORT_IS_IDLE_0);
  port_is_idle_1 = REG_RD(bp, PXP2_REG_RD_PORT_IS_IDLE_1);
  pgl_exp_rom2 = REG_RD(bp, PXP2_REG_PGL_EXP_ROM2);
  if (CHIP_IS_E3(bp))
   tags_63_32 = REG_RD(bp, PGLUE_B_REG_TAGS_63_32);

  if ((sr_cnt == 0x7e) && (blk_cnt == 0xa0) &&
      ((port_is_idle_0 & 0x1) == 0x1) &&
      ((port_is_idle_1 & 0x1) == 0x1) &&
      (pgl_exp_rom2 == 0xffffffff) &&
      (!CHIP_IS_E3(bp) || (tags_63_32 == 0xffffffff)))
   break;
  usleep_range(1000, 2000);
 } while (cnt-- > 0);

 if (cnt <= 0) {
  BNX2X_ERR("Tetris buffer didn't get empty or there are still outstanding read requests after 1s!\n");
  BNX2X_ERR("sr_cnt=0x%08x, blk_cnt=0x%08x, port_is_idle_0=0x%08x, port_is_idle_1=0x%08x, pgl_exp_rom2=0x%08x\n",
     sr_cnt, blk_cnt, port_is_idle_0, port_is_idle_1,
     pgl_exp_rom2);
  return -EAGAIN;
 }

 barrier();


 bnx2x_set_234_gates(bp, 1);


 if (!CHIP_IS_E1x(bp) && bnx2x_er_poll_igu_vq(bp))
  return -EAGAIN;




 REG_WR(bp, MISC_REG_UNPREPARED, 0);
 barrier();


 mmiowb();




 usleep_range(1000, 2000);



 if (global)
  bnx2x_reset_mcp_prep(bp, &val);


 bnx2x_pxp_prep(bp);
 barrier();


 bnx2x_process_kill_chip_reset(bp, global);
 barrier();



 if (global && bnx2x_reset_mcp_comp(bp, val))
  return -EAGAIN;




 bnx2x_set_234_gates(bp, 0);




 return 0;
}
