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
struct scatterlist {int /*<<< orphan*/  length; int /*<<< orphan*/  dma_address; } ;
struct device {int dummy; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DMA_NONE ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct scatterlist*) ; 

int FUNC5(struct device *dev, struct scatterlist *sg, int nents,
	enum dma_data_direction direction)
{
	int i;

	FUNC0(direction == DMA_NONE);

	for (i = 0; i < nents; i++, sg++) {
		unsigned long addr;

		addr = (unsigned long) FUNC4(sg);
		if (!FUNC2(dev) && addr)
			FUNC1(addr, sg->length, direction);
		sg->dma_address = FUNC3(dev,
				                   (void *)addr, sg->length);
	}

	return nents;
}