
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct bnx2x_virtf {int cfg_flags; int abs_vfid; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_MSG_IOV ;
 int BP_ABS_FUNC (struct bnx2x*) ;
 int BP_FUNC (struct bnx2x*) ;
 int DP (int ,char*,int ,int) ;
 int HW_VF_HANDLE (struct bnx2x*,int ) ;
 int IGU_INT_DISABLE ;
 scalar_t__ IGU_REG_PBA_STATUS_LSB ;
 scalar_t__ IGU_REG_PBA_STATUS_MSB ;
 scalar_t__ IGU_REG_PROD_CONS_MEMORY ;
 scalar_t__ IGU_REG_SB_INT_BEFORE_MASK_LSB ;
 scalar_t__ IGU_REG_SB_INT_BEFORE_MASK_MSB ;
 scalar_t__ IGU_REG_SB_MASK_LSB ;
 scalar_t__ IGU_REG_SB_MASK_MSB ;
 scalar_t__ IGU_REG_VF_CONFIGURATION ;
 int IGU_VF_CONF_FUNC_EN ;
 int IGU_VF_CONF_MSI_MSIX_EN ;
 int IGU_VF_CONF_PARENT_MASK ;
 int IGU_VF_CONF_PARENT_SHIFT ;
 int IGU_VF_CONF_SINGLE_ISR_EN ;
 int REG_RD (struct bnx2x*,scalar_t__) ;
 int REG_WR (struct bnx2x*,scalar_t__,int) ;
 int USTORM_ID ;
 int VF_CFG_INT_SIMD ;
 int bnx2x_igu_clear_sb_gen (struct bnx2x*,int ,int,int) ;
 int bnx2x_pretend_func (struct bnx2x*,int ) ;
 int bnx2x_vf_igu_ack_sb (struct bnx2x*,struct bnx2x_virtf*,int,int ,int ,int ,int) ;
 int vf_igu_sb (struct bnx2x_virtf*,int) ;
 int vf_sb_count (struct bnx2x_virtf*) ;

__attribute__((used)) static void bnx2x_vf_igu_reset(struct bnx2x *bp, struct bnx2x_virtf *vf)
{
 int i;
 u32 val;


 bnx2x_pretend_func(bp, HW_VF_HANDLE(bp, vf->abs_vfid));

 REG_WR(bp, IGU_REG_SB_INT_BEFORE_MASK_LSB, 0);
 REG_WR(bp, IGU_REG_SB_INT_BEFORE_MASK_MSB, 0);
 REG_WR(bp, IGU_REG_SB_MASK_LSB, 0);
 REG_WR(bp, IGU_REG_SB_MASK_MSB, 0);
 REG_WR(bp, IGU_REG_PBA_STATUS_LSB, 0);
 REG_WR(bp, IGU_REG_PBA_STATUS_MSB, 0);

 val = REG_RD(bp, IGU_REG_VF_CONFIGURATION);
 val |= (IGU_VF_CONF_FUNC_EN | IGU_VF_CONF_MSI_MSIX_EN);
 if (vf->cfg_flags & VF_CFG_INT_SIMD)
  val |= IGU_VF_CONF_SINGLE_ISR_EN;
 val &= ~IGU_VF_CONF_PARENT_MASK;
 val |= BP_FUNC(bp) << IGU_VF_CONF_PARENT_SHIFT;
 REG_WR(bp, IGU_REG_VF_CONFIGURATION, val);

 DP(BNX2X_MSG_IOV,
    "value in IGU_REG_VF_CONFIGURATION of vf %d after write %x\n",
    vf->abs_vfid, REG_RD(bp, IGU_REG_VF_CONFIGURATION));

 bnx2x_pretend_func(bp, BP_ABS_FUNC(bp));


 for (i = 0; i < vf_sb_count(vf); i++) {
  u8 igu_sb_id = vf_igu_sb(vf, i);


  REG_WR(bp, IGU_REG_PROD_CONS_MEMORY + igu_sb_id * 4, 0);


  bnx2x_igu_clear_sb_gen(bp, vf->abs_vfid, igu_sb_id,
           0 );


  bnx2x_vf_igu_ack_sb(bp, vf, igu_sb_id, USTORM_ID, 0,
        IGU_INT_DISABLE, 1);
 }
}
