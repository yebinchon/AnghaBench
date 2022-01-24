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
struct qib_devdata {int cfgctxts; int rcvtidcnt; struct page** pageshadow; int /*<<< orphan*/ * physshadow; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qib_devdata*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct page**) ; 
 void* FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct qib_devdata *dd)
{
	struct page **pages;
	dma_addr_t *addrs;

	pages = FUNC2(dd->cfgctxts * dd->rcvtidcnt * sizeof(struct page *));
	if (!pages) {
		FUNC0(dd,
			"failed to allocate shadow page * array, no expected sends!\n");
		goto bail;
	}

	addrs = FUNC2(dd->cfgctxts * dd->rcvtidcnt * sizeof(dma_addr_t));
	if (!addrs) {
		FUNC0(dd,
			"failed to allocate shadow dma handle array, no expected sends!\n");
		goto bail_free;
	}

	dd->pageshadow = pages;
	dd->physshadow = addrs;
	return;

bail_free:
	FUNC1(pages);
bail:
	dd->pageshadow = NULL;
}