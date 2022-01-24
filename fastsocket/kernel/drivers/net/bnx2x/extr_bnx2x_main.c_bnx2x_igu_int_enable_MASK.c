#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ pmf; } ;
struct bnx2x {int flags; TYPE_1__ port; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,char*) ; 
 int IGU_PF_CONF_ATTN_BIT_EN ; 
 int IGU_PF_CONF_FUNC_EN ; 
 int IGU_PF_CONF_INT_LINE_EN ; 
 int IGU_PF_CONF_MSI_MSIX_EN ; 
 int IGU_PF_CONF_SINGLE_ISR_EN ; 
 int /*<<< orphan*/  IGU_REG_LEADING_EDGE_LATCH ; 
 int /*<<< orphan*/  IGU_REG_PF_CONFIGURATION ; 
 int /*<<< orphan*/  IGU_REG_TRAILING_EDGE_LATCH ; 
 scalar_t__ FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  NETIF_MSG_IFUP ; 
 int FUNC3 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,int /*<<< orphan*/ ,int) ; 
 int USING_MSIX_FLAG ; 
 int USING_MSI_FLAG ; 
 int USING_SINGLE_MSIX_FLAG ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(struct bnx2x *bp)
{
	u32 val;
	bool msix = (bp->flags & USING_MSIX_FLAG) ? true : false;
	bool single_msix = (bp->flags & USING_SINGLE_MSIX_FLAG) ? true : false;
	bool msi = (bp->flags & USING_MSI_FLAG) ? true : false;

	val = FUNC3(bp, IGU_REG_PF_CONFIGURATION);

	if (msix) {
		val &= ~(IGU_PF_CONF_INT_LINE_EN |
			 IGU_PF_CONF_SINGLE_ISR_EN);
		val |= (IGU_PF_CONF_MSI_MSIX_EN |
			IGU_PF_CONF_ATTN_BIT_EN);

		if (single_msix)
			val |= IGU_PF_CONF_SINGLE_ISR_EN;
	} else if (msi) {
		val &= ~IGU_PF_CONF_INT_LINE_EN;
		val |= (IGU_PF_CONF_MSI_MSIX_EN |
			IGU_PF_CONF_ATTN_BIT_EN |
			IGU_PF_CONF_SINGLE_ISR_EN);
	} else {
		val &= ~IGU_PF_CONF_MSI_MSIX_EN;
		val |= (IGU_PF_CONF_INT_LINE_EN |
			IGU_PF_CONF_ATTN_BIT_EN |
			IGU_PF_CONF_SINGLE_ISR_EN);
	}

	/* Clean previous status - need to configure igu prior to ack*/
	if ((!msix) || single_msix) {
		FUNC4(bp, IGU_REG_PF_CONFIGURATION, val);
		FUNC6(bp);
	}

	val |= IGU_PF_CONF_FUNC_EN;

	FUNC1(NETIF_MSG_IFUP, "write 0x%x to IGU  mode %s\n",
	   val, (msix ? "MSI-X" : (msi ? "MSI" : "INTx")));

	FUNC4(bp, IGU_REG_PF_CONFIGURATION, val);

	if (val & IGU_PF_CONF_INT_LINE_EN)
		FUNC8(bp->pdev, true);

	FUNC5();

	/* init leading/trailing edge */
	if (FUNC2(bp)) {
		val = (0xee0f | (1 << (FUNC0(bp) + 4)));
		if (bp->port.pmf)
			/* enable nig and gpio3 attention */
			val |= 0x1100;
	} else
		val = 0xffff;

	FUNC4(bp, IGU_REG_TRAILING_EDGE_LATCH, val);
	FUNC4(bp, IGU_REG_LEADING_EDGE_LATCH, val);

	/* Make sure that interrupts are indeed enabled from here on */
	FUNC7();
}