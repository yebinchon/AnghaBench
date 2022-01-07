
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bnx2x {int flags; int mf_mode; scalar_t__ path_has_ovlan; TYPE_1__* dev; int qm_cid_count; } ;
struct TYPE_2__ {int mtu; } ;


 int AEU_INPUTS_ATTN_BITS_SPIO5 ;
 int BLOCK_ATC ;
 int BLOCK_BRB1 ;
 int BLOCK_CCM ;
 int BLOCK_CDU ;
 int BLOCK_CFC ;
 int BLOCK_CSDM ;
 int BLOCK_CSEM ;
 int BLOCK_DMAE ;
 int BLOCK_DORQ ;
 int BLOCK_HC ;
 int BLOCK_IGU ;
 int BLOCK_MISC ;
 int BLOCK_MISC_AEU ;
 int BLOCK_NIG ;
 int BLOCK_PBF ;
 int BLOCK_PGLUE_B ;
 int BLOCK_PRS ;
 int BLOCK_PXP ;
 int BLOCK_PXP2 ;
 int BLOCK_QM ;
 int BLOCK_SRC ;
 int BLOCK_TCM ;
 int BLOCK_TM ;
 int BLOCK_TSDM ;
 int BLOCK_TSEM ;
 int BLOCK_UCM ;
 int BLOCK_UPB ;
 int BLOCK_USDM ;
 int BLOCK_USEM ;
 int BLOCK_XCM ;
 int BLOCK_XPB ;
 int BLOCK_XSDM ;
 int BLOCK_XSEM ;
 int BP_PORT (struct bnx2x*) ;
 int BRB1_REG_MAC_GUARANTIED_0 ;
 int BRB1_REG_MAC_GUARANTIED_1 ;
 int BRB1_REG_PAUSE_HIGH_THRESHOLD_0 ;
 int BRB1_REG_PAUSE_LOW_THRESHOLD_0 ;
 scalar_t__ CHIP_IS_E1 (struct bnx2x*) ;
 scalar_t__ CHIP_IS_E1H (struct bnx2x*) ;
 scalar_t__ CHIP_IS_E1x (struct bnx2x*) ;
 scalar_t__ CHIP_IS_E3 (struct bnx2x*) ;
 scalar_t__ CHIP_IS_E3B0 (struct bnx2x*) ;
 scalar_t__ CHIP_MODE_IS_4_PORT (struct bnx2x*) ;
 scalar_t__ CNIC_SUPPORT (struct bnx2x*) ;
 int DP (int ,char*,int) ;
 int HC_REG_LEADING_EDGE_0 ;
 int HC_REG_TRAILING_EDGE_0 ;
 int INITOP_SET ;
 int IS_MF (struct bnx2x*) ;
 scalar_t__ IS_MF_AFEX (struct bnx2x*) ;
 scalar_t__ IS_MF_SD (struct bnx2x*) ;
 int MISC_REG_AEU_ENABLE1_FUNC_0_OUT_0 ;
 int MISC_REG_AEU_ENABLE1_FUNC_1_OUT_0 ;
 int MISC_REG_AEU_MASK_ATTN_FUNC_0 ;
 int MISC_REG_SPIO_EVENT_EN ;
 int MISC_SPIO_SPIO5 ;



 int NETIF_MSG_HW ;
 int NIG_REG_LLFC_ENABLE_0 ;
 int NIG_REG_LLFC_OUT_EN_0 ;
 int NIG_REG_LLH0_BRB1_DRV_MASK_MF ;
 int NIG_REG_LLH0_CLS_TYPE ;
 int NIG_REG_LLH1_CLS_TYPE ;
 int NIG_REG_LLH1_MF_MODE ;
 int NIG_REG_LLH_MF_MODE ;
 int NIG_REG_MASK_INTERRUPT_PORT0 ;
 int NIG_REG_P0_HDRS_AFTER_BASIC ;
 int NIG_REG_P1_HDRS_AFTER_BASIC ;
 int NIG_REG_PAUSE_ENABLE_0 ;
 int NIG_REG_XGXS_SERDES0_MODE_SEL ;
 int ONE_PORT_FLAG ;
 int PBF_REG_INIT_P0 ;
 int PBF_REG_P0_ARB_THRSH ;
 int PBF_REG_P0_INIT_CRD ;
 int PBF_REG_P0_PAUSE_ENABLE ;
 int PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER ;
 int PHASE_PORT0 ;
 int PHASE_PORT1 ;
 int PRS_REG_HDRS_AFTER_BASIC_PORT_0 ;
 int PRS_REG_HDRS_AFTER_BASIC_PORT_1 ;
 int PRS_REG_HDRS_AFTER_TAG_0_PORT_0 ;
 int PRS_REG_HDRS_AFTER_TAG_0_PORT_1 ;
 int PRS_REG_MUST_HAVE_HDRS_PORT_0 ;
 int PRS_REG_MUST_HAVE_HDRS_PORT_1 ;
 int REG_RD (struct bnx2x*,int) ;
 int REG_WR (struct bnx2x*,int,int) ;
 int TM_REG_LIN0_MAX_ACTIVE_CID ;
 int TM_REG_LIN0_SCAN_TIME ;
 int bnx2x_init_block (struct bnx2x*,int ,int) ;
 int bnx2x_qm_init_cid_count (struct bnx2x*,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int bnx2x_init_hw_port(struct bnx2x *bp)
{
 int port = BP_PORT(bp);
 int init_phase = port ? PHASE_PORT1 : PHASE_PORT0;
 u32 low, high;
 u32 val;

 DP(NETIF_MSG_HW, "starting port init  port %d\n", port);

 REG_WR(bp, NIG_REG_MASK_INTERRUPT_PORT0 + port*4, 0);

 bnx2x_init_block(bp, BLOCK_MISC, init_phase);
 bnx2x_init_block(bp, BLOCK_PXP, init_phase);
 bnx2x_init_block(bp, BLOCK_PXP2, init_phase);






 if (!CHIP_IS_E1x(bp))
  REG_WR(bp, PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER, 1);

 bnx2x_init_block(bp, BLOCK_ATC, init_phase);
 bnx2x_init_block(bp, BLOCK_DMAE, init_phase);
 bnx2x_init_block(bp, BLOCK_PGLUE_B, init_phase);
 bnx2x_init_block(bp, BLOCK_QM, init_phase);

 bnx2x_init_block(bp, BLOCK_TCM, init_phase);
 bnx2x_init_block(bp, BLOCK_UCM, init_phase);
 bnx2x_init_block(bp, BLOCK_CCM, init_phase);
 bnx2x_init_block(bp, BLOCK_XCM, init_phase);


 bnx2x_qm_init_cid_count(bp, bp->qm_cid_count, INITOP_SET);

 if (CNIC_SUPPORT(bp)) {
  bnx2x_init_block(bp, BLOCK_TM, init_phase);
  REG_WR(bp, TM_REG_LIN0_SCAN_TIME + port*4, 20);
  REG_WR(bp, TM_REG_LIN0_MAX_ACTIVE_CID + port*4, 31);
 }

 bnx2x_init_block(bp, BLOCK_DORQ, init_phase);

 bnx2x_init_block(bp, BLOCK_BRB1, init_phase);

 if (CHIP_IS_E1(bp) || CHIP_IS_E1H(bp)) {

  if (IS_MF(bp))
   low = ((bp->flags & ONE_PORT_FLAG) ? 160 : 246);
  else if (bp->dev->mtu > 4096) {
   if (bp->flags & ONE_PORT_FLAG)
    low = 160;
   else {
    val = bp->dev->mtu;

    low = 96 + (val/64) +
      ((val % 64) ? 1 : 0);
   }
  } else
   low = ((bp->flags & ONE_PORT_FLAG) ? 80 : 160);
  high = low + 56;
  REG_WR(bp, BRB1_REG_PAUSE_LOW_THRESHOLD_0 + port*4, low);
  REG_WR(bp, BRB1_REG_PAUSE_HIGH_THRESHOLD_0 + port*4, high);
 }

 if (CHIP_MODE_IS_4_PORT(bp))
  REG_WR(bp, (BP_PORT(bp) ?
       BRB1_REG_MAC_GUARANTIED_1 :
       BRB1_REG_MAC_GUARANTIED_0), 40);

 bnx2x_init_block(bp, BLOCK_PRS, init_phase);
 if (CHIP_IS_E3B0(bp)) {
  if (IS_MF_AFEX(bp)) {

   REG_WR(bp, BP_PORT(bp) ?
          PRS_REG_HDRS_AFTER_BASIC_PORT_1 :
          PRS_REG_HDRS_AFTER_BASIC_PORT_0, 0xE);
   REG_WR(bp, BP_PORT(bp) ?
          PRS_REG_HDRS_AFTER_TAG_0_PORT_1 :
          PRS_REG_HDRS_AFTER_TAG_0_PORT_0, 0x6);
   REG_WR(bp, BP_PORT(bp) ?
          PRS_REG_MUST_HAVE_HDRS_PORT_1 :
          PRS_REG_MUST_HAVE_HDRS_PORT_0, 0xA);
  } else {




   REG_WR(bp, BP_PORT(bp) ?
          PRS_REG_HDRS_AFTER_BASIC_PORT_1 :
          PRS_REG_HDRS_AFTER_BASIC_PORT_0,
          (bp->path_has_ovlan ? 7 : 6));
  }
 }

 bnx2x_init_block(bp, BLOCK_TSDM, init_phase);
 bnx2x_init_block(bp, BLOCK_CSDM, init_phase);
 bnx2x_init_block(bp, BLOCK_USDM, init_phase);
 bnx2x_init_block(bp, BLOCK_XSDM, init_phase);

 bnx2x_init_block(bp, BLOCK_TSEM, init_phase);
 bnx2x_init_block(bp, BLOCK_USEM, init_phase);
 bnx2x_init_block(bp, BLOCK_CSEM, init_phase);
 bnx2x_init_block(bp, BLOCK_XSEM, init_phase);

 bnx2x_init_block(bp, BLOCK_UPB, init_phase);
 bnx2x_init_block(bp, BLOCK_XPB, init_phase);

 bnx2x_init_block(bp, BLOCK_PBF, init_phase);

 if (CHIP_IS_E1x(bp)) {

  REG_WR(bp, PBF_REG_P0_PAUSE_ENABLE + port*4, 0);


  REG_WR(bp, PBF_REG_P0_ARB_THRSH + port*4, (9040/16));

  REG_WR(bp, PBF_REG_P0_INIT_CRD + port*4, (9040/16) + 553 - 22);


  REG_WR(bp, PBF_REG_INIT_P0 + port*4, 1);
  udelay(50);
  REG_WR(bp, PBF_REG_INIT_P0 + port*4, 0);
 }

 if (CNIC_SUPPORT(bp))
  bnx2x_init_block(bp, BLOCK_SRC, init_phase);

 bnx2x_init_block(bp, BLOCK_CDU, init_phase);
 bnx2x_init_block(bp, BLOCK_CFC, init_phase);

 if (CHIP_IS_E1(bp)) {
  REG_WR(bp, HC_REG_LEADING_EDGE_0 + port*8, 0);
  REG_WR(bp, HC_REG_TRAILING_EDGE_0 + port*8, 0);
 }
 bnx2x_init_block(bp, BLOCK_HC, init_phase);

 bnx2x_init_block(bp, BLOCK_IGU, init_phase);

 bnx2x_init_block(bp, BLOCK_MISC_AEU, init_phase);




 val = IS_MF(bp) ? 0xF7 : 0x7;

 val |= CHIP_IS_E1(bp) ? 0 : 0x10;
 REG_WR(bp, MISC_REG_AEU_MASK_ATTN_FUNC_0 + port*4, val);

 bnx2x_init_block(bp, BLOCK_NIG, init_phase);

 if (!CHIP_IS_E1x(bp)) {



  if (IS_MF_AFEX(bp))
   REG_WR(bp, BP_PORT(bp) ?
          NIG_REG_P1_HDRS_AFTER_BASIC :
          NIG_REG_P0_HDRS_AFTER_BASIC, 0xE);
  else
   REG_WR(bp, BP_PORT(bp) ?
          NIG_REG_P1_HDRS_AFTER_BASIC :
          NIG_REG_P0_HDRS_AFTER_BASIC,
          IS_MF_SD(bp) ? 7 : 6);

  if (CHIP_IS_E3(bp))
   REG_WR(bp, BP_PORT(bp) ?
       NIG_REG_LLH1_MF_MODE :
       NIG_REG_LLH_MF_MODE, IS_MF(bp));
 }
 if (!CHIP_IS_E3(bp))
  REG_WR(bp, NIG_REG_XGXS_SERDES0_MODE_SEL + port*4, 1);

 if (!CHIP_IS_E1(bp)) {

  REG_WR(bp, NIG_REG_LLH0_BRB1_DRV_MASK_MF + port*4,
         (IS_MF_SD(bp) ? 0x1 : 0x2));

  if (!CHIP_IS_E1x(bp)) {
   val = 0;
   switch (bp->mf_mode) {
   case 129:
    val = 1;
    break;
   case 128:
   case 130:
    val = 2;
    break;
   }

   REG_WR(bp, (BP_PORT(bp) ? NIG_REG_LLH1_CLS_TYPE :
        NIG_REG_LLH0_CLS_TYPE), val);
  }
  {
   REG_WR(bp, NIG_REG_LLFC_ENABLE_0 + port*4, 0);
   REG_WR(bp, NIG_REG_LLFC_OUT_EN_0 + port*4, 0);
   REG_WR(bp, NIG_REG_PAUSE_ENABLE_0 + port*4, 1);
  }
 }


 val = REG_RD(bp, MISC_REG_SPIO_EVENT_EN);
 if (val & MISC_SPIO_SPIO5) {
  u32 reg_addr = (port ? MISC_REG_AEU_ENABLE1_FUNC_1_OUT_0 :
           MISC_REG_AEU_ENABLE1_FUNC_0_OUT_0);
  val = REG_RD(bp, reg_addr);
  val |= AEU_INPUTS_ATTN_BITS_SPIO5;
  REG_WR(bp, reg_addr, val);
 }

 return 0;
}
