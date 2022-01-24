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
typedef  int u16 ;
struct omap_mcbsp {int /*<<< orphan*/  tx_irq_completion; int /*<<< orphan*/  io_base; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int RSYNC_ERR ; 
 int /*<<< orphan*/  SPCR1 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct omap_mcbsp *mcbsp_rx = dev_id;
	u16 irqst_spcr1;

	irqst_spcr1 = FUNC0(mcbsp_rx->io_base, SPCR1);
	FUNC3(mcbsp_rx->dev, "RX IRQ callback : 0x%x\n", irqst_spcr1);

	if (irqst_spcr1 & RSYNC_ERR) {
		FUNC4(mcbsp_rx->dev, "RX Frame Sync Error! : 0x%x\n",
			irqst_spcr1);
		/* Writing zero to RSYNC_ERR clears the IRQ */
		FUNC1(mcbsp_rx->io_base, SPCR1,
			irqst_spcr1 & ~(RSYNC_ERR));
	} else {
		FUNC2(&mcbsp_rx->tx_irq_completion);
	}

	return IRQ_HANDLED;
}