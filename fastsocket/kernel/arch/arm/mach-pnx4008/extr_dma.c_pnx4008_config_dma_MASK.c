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

/* Variables and functions */
 int /*<<< orphan*/  DMAC_CONFIG ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

int FUNC4(int ahb_m1_be, int ahb_m2_be, int enable)
{
	unsigned long dma_cfg = FUNC0(DMAC_CONFIG);

	switch (ahb_m1_be) {
	case 0:
		dma_cfg &= ~(1 << 1);
		break;
	case 1:
		dma_cfg |= (1 << 1);
		break;
	default:
		break;
	}

	switch (ahb_m2_be) {
	case 0:
		dma_cfg &= ~(1 << 2);
		break;
	case 1:
		dma_cfg |= (1 << 2);
		break;
	default:
		break;
	}

	switch (enable) {
	case 0:
		dma_cfg &= ~(1 << 0);
		break;
	case 1:
		dma_cfg |= (1 << 0);
		break;
	default:
		break;
	}

	FUNC2();
	FUNC1(dma_cfg, DMAC_CONFIG);
	FUNC3();

	return 0;
}