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
struct scatterlist {int dummy; } ;
struct device {int dummy; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DMA_NONE ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  __KM_CACHE ; 
 unsigned long FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,scalar_t__) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct scatterlist*) ; 

int FUNC8(struct device *dev, struct scatterlist *sg, int nents,
	       enum dma_data_direction direction)
{
	unsigned long dampr2;
	void *vaddr;
	int i;

	FUNC0(direction == DMA_NONE);

	dampr2 = FUNC1(2);

	for (i = 0; i < nents; i++) {
		vaddr = FUNC5(FUNC7(&sg[i]), __KM_CACHE);

		FUNC4((unsigned long) vaddr,
				     (unsigned long) vaddr + PAGE_SIZE);

	}

	FUNC6(vaddr, __KM_CACHE);
	if (dampr2) {
		FUNC2(2, dampr2);
		FUNC3(2, dampr2);
	}

	return nents;
}