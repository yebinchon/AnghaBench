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
struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct vm_area_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 unsigned long FUNC6 (struct page*) ; 

void FUNC7(struct vm_area_struct *vma, struct page *page, unsigned long vmaddr)
{
	unsigned long pfn;

	/* VIPT non-aliasing caches need do nothing */
	if (FUNC1())
		return;

	/*
	 * Write back and invalidate userspace mapping.
	 */
	pfn = FUNC6(page);
	if (FUNC2()) {
		FUNC3(vma, vmaddr, pfn);
	} else {
		/*
		 * For aliasing VIPT, we can flush an alias of the
		 * userspace address only.
		 */
		FUNC4(pfn, vmaddr);
	}

	/*
	 * Invalidate kernel mapping.  No data should be contained
	 * in this mapping of the page.  FIXME: this is overkill
	 * since we actually ask for a write-back and invalidate.
	 */
	FUNC0(FUNC5(page));
}