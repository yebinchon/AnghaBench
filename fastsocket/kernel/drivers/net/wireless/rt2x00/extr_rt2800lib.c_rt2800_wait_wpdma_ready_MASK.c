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
 int EACCES ; 
 unsigned int REGISTER_BUSY_COUNT ; 
 int /*<<< orphan*/  WPDMA_GLO_CFG ; 
 int /*<<< orphan*/  WPDMA_GLO_CFG_RX_DMA_BUSY ; 
 int /*<<< orphan*/  WPDMA_GLO_CFG_TX_DMA_BUSY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct rt2x00_dev *rt2x00dev)
{
	unsigned int i;
	u32 reg;

	/*
	 * Some devices are really slow to respond here. Wait a whole second
	 * before timing out.
	 */
	for (i = 0; i < REGISTER_BUSY_COUNT; i++) {
		FUNC1(rt2x00dev, WPDMA_GLO_CFG, &reg);
		if (!FUNC3(reg, WPDMA_GLO_CFG_TX_DMA_BUSY) &&
		    !FUNC3(reg, WPDMA_GLO_CFG_RX_DMA_BUSY))
			return 0;

		FUNC0(10);
	}

	FUNC2(rt2x00dev, "WPDMA TX/RX busy [0x%08x]\n", reg);
	return -EACCES;
}