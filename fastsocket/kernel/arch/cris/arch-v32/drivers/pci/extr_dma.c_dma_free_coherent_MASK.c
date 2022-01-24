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
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,int,void*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int) ; 
 int FUNC2 (size_t) ; 

void FUNC3(struct device *dev, size_t size,
			 void *vaddr, dma_addr_t dma_handle)
{
	int order = FUNC2(size);

	if (!FUNC0(dev, order, vaddr))
		FUNC1((unsigned long)vaddr, order);
}