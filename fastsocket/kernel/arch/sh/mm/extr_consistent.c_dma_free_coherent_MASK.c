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
struct device {int dummy; } ;
typedef  unsigned long dma_addr_t ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,size_t,void*,unsigned long) ; 
 scalar_t__ FUNC3 (struct device*,int,void*) ; 
 int FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 

void FUNC8(struct device *dev, size_t size,
			 void *vaddr, dma_addr_t dma_handle)
{
	int order = FUNC4(size);
	unsigned long pfn = dma_handle >> PAGE_SHIFT;
	int k;

	FUNC0(FUNC6());	/* for portability */

	if (FUNC3(dev, order, vaddr))
		return;

	FUNC2(dev, size, vaddr, dma_handle);
	for (k = 0; k < (1 << order); k++)
		FUNC1(FUNC7(pfn + k), 0);
	FUNC5(vaddr);
}