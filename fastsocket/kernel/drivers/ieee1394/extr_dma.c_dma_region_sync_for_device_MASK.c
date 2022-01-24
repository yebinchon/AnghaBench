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
struct dma_region {int /*<<< orphan*/  direction; int /*<<< orphan*/ * sglist; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct dma_region*,unsigned long,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

void FUNC2(struct dma_region *dma, unsigned long offset,
				unsigned long len)
{
	int first, last;
	unsigned long rem = 0;

	if (!len)
		len = 1;

	first = FUNC0(dma, offset, 0, &rem);
	last = FUNC0(dma, rem + len - 1, first, &rem);

	FUNC1(dma->dev, &dma->sglist[first],
				   last - first + 1, dma->direction);
}