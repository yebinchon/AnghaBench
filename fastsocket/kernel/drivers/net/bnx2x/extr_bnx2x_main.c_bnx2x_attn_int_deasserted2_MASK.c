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
typedef  int u32 ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int AEU_INPUTS_ATTN_BITS_CFC_HW_INTERRUPT ; 
 int AEU_INPUTS_ATTN_BITS_PXP_HW_INTERRUPT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (struct bnx2x*) ; 
 int CFC_REG_CFC_INT_STS_CLR ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*) ; 
 int HW_INTERRUT_ASSERT_SET_2 ; 
 int MISC_REG_AEU_ENABLE1_FUNC_0_OUT_2 ; 
 int MISC_REG_AEU_ENABLE1_FUNC_1_OUT_2 ; 
 int PXP_REG_PXP_INT_STS_CLR_0 ; 
 int PXP_REG_PXP_INT_STS_CLR_1 ; 
 int FUNC3 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,int,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct bnx2x *bp, u32 attn)
{
	u32 val;

	if (attn & AEU_INPUTS_ATTN_BITS_CFC_HW_INTERRUPT) {

		val = FUNC3(bp, CFC_REG_CFC_INT_STS_CLR);
		FUNC0("CFC hw attention 0x%x\n", val);
		/* CFC error attention */
		if (val & 0x2)
			FUNC0("FATAL error from CFC\n");
	}

	if (attn & AEU_INPUTS_ATTN_BITS_PXP_HW_INTERRUPT) {
		val = FUNC3(bp, PXP_REG_PXP_INT_STS_CLR_0);
		FUNC0("PXP hw attention-0 0x%x\n", val);
		/* RQ_USDMDP_FIFO_OVERFLOW */
		if (val & 0x18000)
			FUNC0("FATAL error from PXP\n");

		if (!FUNC2(bp)) {
			val = FUNC3(bp, PXP_REG_PXP_INT_STS_CLR_1);
			FUNC0("PXP hw attention-1 0x%x\n", val);
		}
	}

	if (attn & HW_INTERRUT_ASSERT_SET_2) {

		int port = FUNC1(bp);
		int reg_offset;

		reg_offset = (port ? MISC_REG_AEU_ENABLE1_FUNC_1_OUT_2 :
				     MISC_REG_AEU_ENABLE1_FUNC_0_OUT_2);

		val = FUNC3(bp, reg_offset);
		val &= ~(attn & HW_INTERRUT_ASSERT_SET_2);
		FUNC4(bp, reg_offset, val);

		FUNC0("FATAL HW block attention set2 0x%x\n",
			  (u32)(attn & HW_INTERRUT_ASSERT_SET_2));
		FUNC5();
	}
}