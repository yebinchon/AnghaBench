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
struct device {int dummy; } ;
struct bnx2x {int /*<<< orphan*/  flags; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int /*<<< orphan*/  USING_DAC_FLAG ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 scalar_t__ FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct bnx2x *bp)
{
	struct device *dev = &bp->pdev->dev;

	if (FUNC3(dev, FUNC0(64)) == 0) {
		bp->flags |= USING_DAC_FLAG;
		if (FUNC2(dev, FUNC0(64)) != 0) {
			FUNC1(dev, "dma_set_coherent_mask failed, aborting\n");
			return -EIO;
		}
	} else if (FUNC3(dev, FUNC0(32)) != 0) {
		FUNC1(dev, "System does not support DMA, aborting\n");
		return -EIO;
	}

	return 0;
}