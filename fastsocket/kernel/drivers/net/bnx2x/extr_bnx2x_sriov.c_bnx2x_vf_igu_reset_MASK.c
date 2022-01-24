#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct bnx2x_virtf {int cfg_flags; int /*<<< orphan*/  abs_vfid; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_MSG_IOV ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2x*) ; 
 int FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IGU_INT_DISABLE ; 
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
 int FUNC4 (struct bnx2x*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,scalar_t__,int) ; 
 int /*<<< orphan*/  USTORM_ID ; 
 int VF_CFG_INT_SIMD ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2x*,struct bnx2x_virtf*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct bnx2x_virtf*,int) ; 
 int FUNC10 (struct bnx2x_virtf*) ; 

__attribute__((used)) static void FUNC11(struct bnx2x *bp, struct bnx2x_virtf *vf)
{
	int i;
	u32 val;

	/* Set VF masks and configuration - pretend */
	FUNC7(bp, FUNC3(bp, vf->abs_vfid));

	FUNC5(bp, IGU_REG_SB_INT_BEFORE_MASK_LSB, 0);
	FUNC5(bp, IGU_REG_SB_INT_BEFORE_MASK_MSB, 0);
	FUNC5(bp, IGU_REG_SB_MASK_LSB, 0);
	FUNC5(bp, IGU_REG_SB_MASK_MSB, 0);
	FUNC5(bp, IGU_REG_PBA_STATUS_LSB, 0);
	FUNC5(bp, IGU_REG_PBA_STATUS_MSB, 0);

	val = FUNC4(bp, IGU_REG_VF_CONFIGURATION);
	val |= (IGU_VF_CONF_FUNC_EN | IGU_VF_CONF_MSI_MSIX_EN);
	if (vf->cfg_flags & VF_CFG_INT_SIMD)
		val |= IGU_VF_CONF_SINGLE_ISR_EN;
	val &= ~IGU_VF_CONF_PARENT_MASK;
	val |= FUNC1(bp) << IGU_VF_CONF_PARENT_SHIFT;	/* parent PF */
	FUNC5(bp, IGU_REG_VF_CONFIGURATION, val);

	FUNC2(BNX2X_MSG_IOV,
	   "value in IGU_REG_VF_CONFIGURATION of vf %d after write %x\n",
	   vf->abs_vfid, FUNC4(bp, IGU_REG_VF_CONFIGURATION));

	FUNC7(bp, FUNC0(bp));

	/* iterate over all queues, clear sb consumer */
	for (i = 0; i < FUNC10(vf); i++) {
		u8 igu_sb_id = FUNC9(vf, i);

		/* zero prod memory */
		FUNC5(bp, IGU_REG_PROD_CONS_MEMORY + igu_sb_id * 4, 0);

		/* clear sb state machine */
		FUNC6(bp, vf->abs_vfid, igu_sb_id,
				       false /* VF */);

		/* disable + update */
		FUNC8(bp, vf, igu_sb_id, USTORM_ID, 0,
				    IGU_INT_DISABLE, 1);
	}
}