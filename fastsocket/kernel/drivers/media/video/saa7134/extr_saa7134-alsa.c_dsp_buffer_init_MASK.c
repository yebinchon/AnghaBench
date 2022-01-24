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
struct TYPE_2__ {int bufsize; int /*<<< orphan*/  dma; } ;
struct saa7134_dev {TYPE_1__ dmasound; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct saa7134_dev *dev)
{
	int err;

	FUNC0(!dev->dmasound.bufsize);

	FUNC1(&dev->dmasound.dma);
	err = FUNC2(&dev->dmasound.dma, PCI_DMA_FROMDEVICE,
				       (dev->dmasound.bufsize + PAGE_SIZE) >> PAGE_SHIFT);
	if (0 != err)
		return err;
	return 0;
}