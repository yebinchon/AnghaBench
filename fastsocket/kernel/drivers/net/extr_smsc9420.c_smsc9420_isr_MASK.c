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
typedef  int /*<<< orphan*/  ulong ;
typedef  int u32 ;
struct smsc9420_pdata {int software_irq_signal; int /*<<< orphan*/  int_lock; int /*<<< orphan*/  napi; int /*<<< orphan*/  dev; int /*<<< orphan*/  base_addr; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DMAC_INTR_ENA ; 
 int DMAC_INTR_ENA_RX_ ; 
 int /*<<< orphan*/  DMAC_STATUS ; 
 int DMAC_STS_NIS_ ; 
 int DMAC_STS_RX_ ; 
 int DMAC_STS_TX_ ; 
 int /*<<< orphan*/  INT_CFG ; 
 int INT_CFG_IRQ_EN_ ; 
 int INT_CFG_IRQ_INT_ ; 
 int /*<<< orphan*/  INT_CTL ; 
 int INT_CTL_SW_INT_EN_ ; 
 int /*<<< orphan*/  INT_STAT ; 
 int INT_STAT_DMAC_INT_ ; 
 int INT_STAT_SW_INT_ ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct smsc9420_pdata*) ; 
 int FUNC6 (struct smsc9420_pdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct smsc9420_pdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *dev_id)
{
	struct smsc9420_pdata *pd = dev_id;
	u32 int_cfg, int_sts, int_ctl;
	irqreturn_t ret = IRQ_NONE;
	ulong flags;

	FUNC0(!pd);
	FUNC0(!pd->base_addr);

	int_cfg = FUNC6(pd, INT_CFG);

	/* check if it's our interrupt */
	if ((int_cfg & (INT_CFG_IRQ_EN_ | INT_CFG_IRQ_INT_)) !=
	    (INT_CFG_IRQ_EN_ | INT_CFG_IRQ_INT_))
		return IRQ_NONE;

	int_sts = FUNC6(pd, INT_STAT);

	if (FUNC1(INT_STAT_DMAC_INT_ & int_sts)) {
		u32 status = FUNC6(pd, DMAC_STATUS);
		u32 ints_to_clear = 0;

		if (status & DMAC_STS_TX_) {
			ints_to_clear |= (DMAC_STS_TX_ | DMAC_STS_NIS_);
			FUNC3(pd->dev);
		}

		if (status & DMAC_STS_RX_) {
			/* mask RX DMAC interrupts */
			u32 dma_intr_ena = FUNC6(pd, DMAC_INTR_ENA);
			dma_intr_ena &= (~DMAC_INTR_ENA_RX_);
			FUNC7(pd, DMAC_INTR_ENA, dma_intr_ena);
			FUNC5(pd);

			ints_to_clear |= (DMAC_STS_RX_ | DMAC_STS_NIS_);
			FUNC2(&pd->napi);
		}

		if (ints_to_clear)
			FUNC7(pd, DMAC_STATUS, ints_to_clear);

		ret = IRQ_HANDLED;
	}

	if (FUNC10(INT_STAT_SW_INT_ & int_sts)) {
		/* mask software interrupt */
		FUNC8(&pd->int_lock, flags);
		int_ctl = FUNC6(pd, INT_CTL);
		int_ctl &= (~INT_CTL_SW_INT_EN_);
		FUNC7(pd, INT_CTL, int_ctl);
		FUNC9(&pd->int_lock, flags);

		FUNC7(pd, INT_STAT, INT_STAT_SW_INT_);
		pd->software_irq_signal = true;
		FUNC4();

		ret = IRQ_HANDLED;
	}

	/* to ensure PCI write completion, we must perform a PCI read */
	FUNC5(pd);

	return ret;
}