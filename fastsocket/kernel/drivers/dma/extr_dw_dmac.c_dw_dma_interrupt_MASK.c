#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct dw_dma {int all_chan_mask; int /*<<< orphan*/  tasklet; TYPE_1__ dma; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {int /*<<< orphan*/  ERROR; int /*<<< orphan*/  DST_TRAN; int /*<<< orphan*/  SRC_TRAN; int /*<<< orphan*/  BLOCK; int /*<<< orphan*/  XFER; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 TYPE_2__ MASK ; 
 int /*<<< orphan*/  STATUS_INT ; 
 int /*<<< orphan*/  FUNC0 (struct dw_dma*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct dw_dma*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct dw_dma *dw = dev_id;
	u32 status;

	FUNC2(dw->dma.dev, "interrupt: status=0x%x\n",
			FUNC3(dw, STATUS_INT));

	/*
	 * Just disable the interrupts. We'll turn them back on in the
	 * softirq handler.
	 */
	FUNC0(dw, MASK.XFER, dw->all_chan_mask);
	FUNC0(dw, MASK.BLOCK, dw->all_chan_mask);
	FUNC0(dw, MASK.ERROR, dw->all_chan_mask);

	status = FUNC3(dw, STATUS_INT);
	if (status) {
		FUNC1(dw->dma.dev,
			"BUG: Unexpected interrupts pending: 0x%x\n",
			status);

		/* Try to recover */
		FUNC0(dw, MASK.XFER, (1 << 8) - 1);
		FUNC0(dw, MASK.BLOCK, (1 << 8) - 1);
		FUNC0(dw, MASK.SRC_TRAN, (1 << 8) - 1);
		FUNC0(dw, MASK.DST_TRAN, (1 << 8) - 1);
		FUNC0(dw, MASK.ERROR, (1 << 8) - 1);
	}

	FUNC4(&dw->tasklet);

	return IRQ_HANDLED;
}