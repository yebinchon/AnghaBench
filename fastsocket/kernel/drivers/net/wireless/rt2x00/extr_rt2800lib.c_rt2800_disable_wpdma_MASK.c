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
typedef  int /*<<< orphan*/  u32 ;
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WPDMA_GLO_CFG ; 
 int /*<<< orphan*/  WPDMA_GLO_CFG_ENABLE_RX_DMA ; 
 int /*<<< orphan*/  WPDMA_GLO_CFG_ENABLE_TX_DMA ; 
 int /*<<< orphan*/  WPDMA_GLO_CFG_RX_DMA_BUSY ; 
 int /*<<< orphan*/  WPDMA_GLO_CFG_TX_DMA_BUSY ; 
 int /*<<< orphan*/  WPDMA_GLO_CFG_TX_WRITEBACK_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct rt2x00_dev *rt2x00dev)
{
	u32 reg;

	FUNC0(rt2x00dev, WPDMA_GLO_CFG, &reg);
	FUNC2(&reg, WPDMA_GLO_CFG_ENABLE_TX_DMA, 0);
	FUNC2(&reg, WPDMA_GLO_CFG_TX_DMA_BUSY, 0);
	FUNC2(&reg, WPDMA_GLO_CFG_ENABLE_RX_DMA, 0);
	FUNC2(&reg, WPDMA_GLO_CFG_RX_DMA_BUSY, 0);
	FUNC2(&reg, WPDMA_GLO_CFG_TX_WRITEBACK_DONE, 1);
	FUNC1(rt2x00dev, WPDMA_GLO_CFG, reg);
}