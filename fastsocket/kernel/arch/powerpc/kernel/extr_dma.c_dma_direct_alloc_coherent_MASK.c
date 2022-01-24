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
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  __GFP_HIGHMEM ; 
 void* FUNC0 (struct device*,size_t,scalar_t__*,int /*<<< orphan*/ ) ; 
 struct page* FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*) ; 
 scalar_t__ FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,size_t) ; 
 void* FUNC6 (struct page*) ; 
 scalar_t__ FUNC7 (void*) ; 

void *FUNC8(struct device *dev, size_t size,
				dma_addr_t *dma_handle, gfp_t flag)
{
	void *ret;
#ifdef CONFIG_NOT_COHERENT_CACHE
	ret = __dma_alloc_coherent(dev, size, dma_handle, flag);
	if (ret == NULL)
		return NULL;
	*dma_handle += get_dma_offset(dev);
	return ret;
#else
	struct page *page;
	int node = FUNC2(dev);

	/* ignore region specifiers */
	flag  &= ~(__GFP_HIGHMEM);

	page = FUNC1(node, flag, FUNC4(size));
	if (page == NULL)
		return NULL;
	ret = FUNC6(page);
	FUNC5(ret, 0, size);
	*dma_handle = FUNC7(ret) + FUNC3(dev);

	return ret;
#endif
}