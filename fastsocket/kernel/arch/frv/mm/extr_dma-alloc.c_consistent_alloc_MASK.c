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
struct vm_struct {int /*<<< orphan*/  addr; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  unsigned long dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 size_t FUNC1 (size_t) ; 
 int /*<<< orphan*/  PAGE_KERNEL_NOCACHE ; 
 scalar_t__ PAGE_SIZE ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VM_ALLOC ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,unsigned long) ; 
 int FUNC6 (size_t) ; 
 struct vm_struct* FUNC7 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 () ; 
 int FUNC9 (unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 unsigned long FUNC12 (void*) ; 
 struct page* FUNC13 (unsigned long) ; 

void *FUNC14(gfp_t gfp, size_t size, dma_addr_t *dma_handle)
{
	struct vm_struct *area;
	unsigned long page, va, pa;
	void *ret;
	int order, err, i;

	if (FUNC8())
		FUNC0();

	/* only allocate page size areas */
	size = FUNC1(size);
	order = FUNC6(size);

	page = FUNC3(gfp, order);
	if (!page) {
		FUNC0();
		return NULL;
	}

	/* allocate some common virtual space to map the new pages */
	area = FUNC7(size, VM_ALLOC);
	if (area == 0) {
		FUNC4(page, order);
		return NULL;
	}
	va = FUNC2(area->addr);
	ret = (void *) va;

	/* this gives us the real physical address of the first page */
	*dma_handle = pa = FUNC12((void *) page);

	/* set refcount=1 on all pages in an order>0 allocation so that vfree() will actually free
	 * all pages that were allocated.
	 */
	if (order > 0) {
		struct page *rpage = FUNC13(page);
		FUNC10(rpage, order);
	}

	err = 0;
	for (i = 0; i < size && err == 0; i += PAGE_SIZE)
		err = FUNC9(va + i, pa + i, PAGE_KERNEL_NOCACHE);

	if (err) {
		FUNC11((void *) va);
		return NULL;
	}

	/* we need to ensure that there are no cachelines in use, or worse dirty in this area
	 * - can't do until after virtual address mappings are created
	 */
	FUNC5(va, va + size);

	return ret;
}