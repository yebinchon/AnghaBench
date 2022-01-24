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
 scalar_t__ BRB1_REG_BRB1_INT_MASK ; 
 scalar_t__ CCM_REG_CCM_INT_MASK ; 
 scalar_t__ CDU_REG_CDU_INT_MASK ; 
 scalar_t__ CFC_REG_CFC_INT_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2x*) ; 
 scalar_t__ CSDM_REG_CSDM_INT_MASK_0 ; 
 scalar_t__ CSDM_REG_CSDM_INT_MASK_1 ; 
 scalar_t__ DMAE_REG_DMAE_INT_MASK ; 
 scalar_t__ DORQ_REG_DORQ_INT_MASK ; 
 scalar_t__ GRCBASE_UPB ; 
 scalar_t__ PBF_REG_PBF_INT_MASK ; 
 scalar_t__ PB_REG_PB_INT_MASK ; 
 int PXP2_PXP2_INT_MASK_0_REG_PGL_CPL_AFT ; 
 int PXP2_PXP2_INT_MASK_0_REG_PGL_CPL_OF ; 
 int PXP2_PXP2_INT_MASK_0_REG_PGL_PCIE_ATTN ; 
 int PXP2_PXP2_INT_MASK_0_REG_PGL_READ_BLOCKED ; 
 int PXP2_PXP2_INT_MASK_0_REG_PGL_WRITE_BLOCKED ; 
 scalar_t__ PXP2_REG_PXP2_INT_MASK_0 ; 
 scalar_t__ PXP_REG_PXP_INT_MASK_0 ; 
 scalar_t__ PXP_REG_PXP_INT_MASK_1 ; 
 scalar_t__ QM_REG_QM_INT_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,scalar_t__,int) ; 
 scalar_t__ TCM_REG_TCM_INT_MASK ; 
 scalar_t__ TM_REG_TM_INT_MASK ; 
 scalar_t__ TSDM_REG_TSDM_INT_MASK_0 ; 
 scalar_t__ TSDM_REG_TSDM_INT_MASK_1 ; 
 scalar_t__ TSEM_REG_TSEM_INT_MASK_1 ; 
 scalar_t__ UCM_REG_UCM_INT_MASK ; 
 scalar_t__ USDM_REG_USDM_INT_MASK_0 ; 
 scalar_t__ USDM_REG_USDM_INT_MASK_1 ; 
 scalar_t__ XCM_REG_XCM_INT_MASK ; 
 scalar_t__ XSDM_REG_XSDM_INT_MASK_0 ; 
 scalar_t__ XSDM_REG_XSDM_INT_MASK_1 ; 

__attribute__((used)) static void FUNC2(struct bnx2x *bp)
{
	u32 val;

	FUNC1(bp, PXP_REG_PXP_INT_MASK_0, 0);
	if (!FUNC0(bp))
		FUNC1(bp, PXP_REG_PXP_INT_MASK_1, 0x40);
	else
		FUNC1(bp, PXP_REG_PXP_INT_MASK_1, 0);
	FUNC1(bp, DORQ_REG_DORQ_INT_MASK, 0);
	FUNC1(bp, CFC_REG_CFC_INT_MASK, 0);
	/*
	 * mask read length error interrupts in brb for parser
	 * (parsing unit and 'checksum and crc' unit)
	 * these errors are legal (PU reads fixed length and CAC can cause
	 * read length error on truncated packets)
	 */
	FUNC1(bp, BRB1_REG_BRB1_INT_MASK, 0xFC00);
	FUNC1(bp, QM_REG_QM_INT_MASK, 0);
	FUNC1(bp, TM_REG_TM_INT_MASK, 0);
	FUNC1(bp, XSDM_REG_XSDM_INT_MASK_0, 0);
	FUNC1(bp, XSDM_REG_XSDM_INT_MASK_1, 0);
	FUNC1(bp, XCM_REG_XCM_INT_MASK, 0);
/*	REG_WR(bp, XSEM_REG_XSEM_INT_MASK_0, 0); */
/*	REG_WR(bp, XSEM_REG_XSEM_INT_MASK_1, 0); */
	FUNC1(bp, USDM_REG_USDM_INT_MASK_0, 0);
	FUNC1(bp, USDM_REG_USDM_INT_MASK_1, 0);
	FUNC1(bp, UCM_REG_UCM_INT_MASK, 0);
/*	REG_WR(bp, USEM_REG_USEM_INT_MASK_0, 0); */
/*	REG_WR(bp, USEM_REG_USEM_INT_MASK_1, 0); */
	FUNC1(bp, GRCBASE_UPB + PB_REG_PB_INT_MASK, 0);
	FUNC1(bp, CSDM_REG_CSDM_INT_MASK_0, 0);
	FUNC1(bp, CSDM_REG_CSDM_INT_MASK_1, 0);
	FUNC1(bp, CCM_REG_CCM_INT_MASK, 0);
/*	REG_WR(bp, CSEM_REG_CSEM_INT_MASK_0, 0); */
/*	REG_WR(bp, CSEM_REG_CSEM_INT_MASK_1, 0); */

	val = PXP2_PXP2_INT_MASK_0_REG_PGL_CPL_AFT  |
		PXP2_PXP2_INT_MASK_0_REG_PGL_CPL_OF |
		PXP2_PXP2_INT_MASK_0_REG_PGL_PCIE_ATTN;
	if (!FUNC0(bp))
		val |= PXP2_PXP2_INT_MASK_0_REG_PGL_READ_BLOCKED |
			PXP2_PXP2_INT_MASK_0_REG_PGL_WRITE_BLOCKED;
	FUNC1(bp, PXP2_REG_PXP2_INT_MASK_0, val);

	FUNC1(bp, TSDM_REG_TSDM_INT_MASK_0, 0);
	FUNC1(bp, TSDM_REG_TSDM_INT_MASK_1, 0);
	FUNC1(bp, TCM_REG_TCM_INT_MASK, 0);
/*	REG_WR(bp, TSEM_REG_TSEM_INT_MASK_0, 0); */

	if (!FUNC0(bp))
		/* enable VFC attentions: bits 11 and 12, bits 31:13 reserved */
		FUNC1(bp, TSEM_REG_TSEM_INT_MASK_1, 0x07ff);

	FUNC1(bp, CDU_REG_CDU_INT_MASK, 0);
	FUNC1(bp, DMAE_REG_DMAE_INT_MASK, 0);
/*	REG_WR(bp, MISC_REG_MISC_INT_MASK, 0); */
	FUNC1(bp, PBF_REG_PBF_INT_MASK, 0x18);		/* bit 3,4 masked */
}