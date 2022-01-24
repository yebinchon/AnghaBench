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
struct comedi_device {int dummy; } ;
struct TYPE_4__ {int usedma; TYPE_1__* dma; int /*<<< orphan*/  dma_maxsize; } ;
struct TYPE_3__ {int chan; void* buf; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC0 (int) ; 
 TYPE_2__* devpriv ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (int,char*) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev, int dma1, int dma2)
{
	int ret;

	devpriv->usedma = 0;

	if (!dma1 && !dma2) {
		FUNC1(" (no dma)");
		return 0;
	}

	if (dma1 == dma2 || dma1 < 5 || dma2 < 5 || dma1 > 7 || dma2 > 7)
		return -EINVAL;

	if (dma2 < dma1) {
		int i;
		i = dma1;
		dma1 = dma2;
		dma2 = i;
	}

	ret = FUNC2(dma1, "dt282x A");
	if (ret)
		return -EBUSY;
	devpriv->dma[0].chan = dma1;

	ret = FUNC2(dma2, "dt282x B");
	if (ret)
		return -EBUSY;
	devpriv->dma[1].chan = dma2;

	devpriv->dma_maxsize = PAGE_SIZE;
	devpriv->dma[0].buf = (void *)FUNC0(GFP_KERNEL | GFP_DMA);
	devpriv->dma[1].buf = (void *)FUNC0(GFP_KERNEL | GFP_DMA);
	if (!devpriv->dma[0].buf || !devpriv->dma[1].buf) {
		FUNC1(" can't get DMA memory");
		return -ENOMEM;
	}

	FUNC1(" (dma=%d,%d)", dma1, dma2);

	devpriv->usedma = 1;

	return 0;
}