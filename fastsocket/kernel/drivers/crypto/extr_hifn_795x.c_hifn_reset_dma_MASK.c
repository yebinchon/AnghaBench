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
struct hifn_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HIFN_1_DMA_CNFG ; 
 int HIFN_DMACNFG_DMARESET ; 
 int HIFN_DMACNFG_MODE ; 
 int HIFN_DMACNFG_MSTRESET ; 
 int /*<<< orphan*/  FUNC0 (struct hifn_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct hifn_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct hifn_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct hifn_device *dev, int full)
{
	FUNC1(dev);

	/*
	 * Setting poll frequency and others to 0.
	 */
	FUNC2(dev, HIFN_1_DMA_CNFG, HIFN_DMACNFG_MSTRESET |
			HIFN_DMACNFG_DMARESET | HIFN_DMACNFG_MODE);
	FUNC3(1);

	/*
	 * Reset DMA.
	 */
	if (full) {
		FUNC2(dev, HIFN_1_DMA_CNFG, HIFN_DMACNFG_MODE);
		FUNC3(1);
	} else {
		FUNC2(dev, HIFN_1_DMA_CNFG, HIFN_DMACNFG_MODE |
				HIFN_DMACNFG_MSTRESET);
		FUNC0(dev);
	}

	FUNC2(dev, HIFN_1_DMA_CNFG, HIFN_DMACNFG_MSTRESET |
			HIFN_DMACNFG_DMARESET | HIFN_DMACNFG_MODE);

	FUNC0(dev);
}