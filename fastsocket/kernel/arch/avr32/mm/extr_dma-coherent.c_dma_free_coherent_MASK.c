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
struct page {int dummy; } ;
struct device {int dummy; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,size_t,struct page*,scalar_t__) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,void*,unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 struct page* FUNC6 (void*) ; 

void FUNC7(struct device *dev, size_t size,
		       void *cpu_addr, dma_addr_t handle)
{
	void *addr = FUNC2(FUNC4(cpu_addr));
	struct page *page;

	FUNC3("dma_free_coherent addr %p (phys %08lx) size %u\n",
		 cpu_addr, (unsigned long)handle, (unsigned)size);
	FUNC0(!FUNC5(addr));
	page = FUNC6(addr);
	FUNC1(dev, size, page, handle);
}