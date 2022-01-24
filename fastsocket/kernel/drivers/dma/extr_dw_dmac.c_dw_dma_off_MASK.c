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
struct dw_dma {int /*<<< orphan*/  all_chan_mask; } ;
struct TYPE_2__ {int /*<<< orphan*/  ERROR; int /*<<< orphan*/  DST_TRAN; int /*<<< orphan*/  SRC_TRAN; int /*<<< orphan*/  BLOCK; int /*<<< orphan*/  XFER; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFG ; 
 int DW_CFG_DMA_EN ; 
 TYPE_1__ MASK ; 
 int /*<<< orphan*/  FUNC0 (struct dw_dma*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct dw_dma*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dw_dma*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct dw_dma *dw)
{
	FUNC3(dw, CFG, 0);

	FUNC0(dw, MASK.XFER, dw->all_chan_mask);
	FUNC0(dw, MASK.BLOCK, dw->all_chan_mask);
	FUNC0(dw, MASK.SRC_TRAN, dw->all_chan_mask);
	FUNC0(dw, MASK.DST_TRAN, dw->all_chan_mask);
	FUNC0(dw, MASK.ERROR, dw->all_chan_mask);

	while (FUNC2(dw, CFG) & DW_CFG_DMA_EN)
		FUNC1();
}