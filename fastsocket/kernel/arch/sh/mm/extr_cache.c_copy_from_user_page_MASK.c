#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {int dummy; } ;
struct page {int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {scalar_t__ n_aliases; } ;
struct TYPE_4__ {TYPE_1__ dcache; } ;

/* Variables and functions */
 unsigned long PAGE_MASK ; 
 int /*<<< orphan*/  PG_dcache_dirty ; 
 TYPE_2__ boot_cpu_data ; 
 void* FUNC0 (struct page*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,void const*,unsigned long) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(struct vm_area_struct *vma, struct page *page,
			 unsigned long vaddr, void *dst, const void *src,
			 unsigned long len)
{
	if (boot_cpu_data.dcache.n_aliases && FUNC3(page) &&
	    !FUNC5(PG_dcache_dirty, &page->flags)) {
		void *vfrom = FUNC0(page, vaddr) + (vaddr & ~PAGE_MASK);
		FUNC2(dst, vfrom, len);
		FUNC1(vfrom);
	} else {
		FUNC2(dst, src, len);
		if (boot_cpu_data.dcache.n_aliases)
			FUNC4(PG_dcache_dirty, &page->flags);
	}
}