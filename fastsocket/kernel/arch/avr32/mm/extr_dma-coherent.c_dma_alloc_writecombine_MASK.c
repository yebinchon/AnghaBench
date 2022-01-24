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
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  _PAGE_BUFFER ; 
 struct page* FUNC0 (struct device*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 

void *FUNC3(struct device *dev, size_t size,
			     dma_addr_t *handle, gfp_t gfp)
{
	struct page *page;
	dma_addr_t phys;

	page = FUNC0(dev, size, handle, gfp);
	if (!page)
		return NULL;

	phys = FUNC2(page);
	*handle = phys;

	/* Now, map the page into P3 with write-combining turned on */
	return FUNC1(phys, size, _PAGE_BUFFER);
}