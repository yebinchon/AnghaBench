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
 unsigned long PAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ cpu_has_dc_aliases ; 
 void* FUNC2 (struct page*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (void*,void const*,unsigned long) ; 
 scalar_t__ FUNC5 (struct page*) ; 

void FUNC6(struct vm_area_struct *vma,
	struct page *page, unsigned long vaddr, void *dst, const void *src,
	unsigned long len)
{
	if (cpu_has_dc_aliases &&
	    FUNC5(page) && !FUNC0(page)) {
		void *vfrom = FUNC2(page, vaddr) + (vaddr & ~PAGE_MASK);
		FUNC4(dst, vfrom, len);
		FUNC3();
	} else {
		FUNC4(dst, src, len);
		if (cpu_has_dc_aliases)
			FUNC1(page);
	}
}