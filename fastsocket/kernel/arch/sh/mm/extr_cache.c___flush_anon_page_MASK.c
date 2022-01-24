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
struct page {int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {scalar_t__ n_aliases; } ;
struct TYPE_4__ {TYPE_1__ dcache; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PG_dcache_dirty ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ) ; 
 TYPE_2__ boot_cpu_data ; 
 void* FUNC1 (struct page*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7(struct page *page, unsigned long vmaddr)
{
	unsigned long addr = (unsigned long) FUNC3(page);

	if (FUNC5(addr, vmaddr)) {
		if (boot_cpu_data.dcache.n_aliases && FUNC4(page) &&
		    !FUNC6(PG_dcache_dirty, &page->flags)) {
			void *kaddr;

			kaddr = FUNC1(page, vmaddr);
			/* XXX.. For now kunmap_coherent() does a purge */
			/* __flush_purge_region((void *)kaddr, PAGE_SIZE); */
			FUNC2(kaddr);
		} else
			FUNC0((void *)addr, PAGE_SIZE);
	}
}