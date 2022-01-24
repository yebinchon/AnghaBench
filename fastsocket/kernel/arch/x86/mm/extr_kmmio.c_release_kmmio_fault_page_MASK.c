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
struct kmmio_fault_page {scalar_t__ count; struct kmmio_fault_page* release_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long PAGE_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct kmmio_fault_page*) ; 
 struct kmmio_fault_page* FUNC2 (unsigned long) ; 

__attribute__((used)) static void FUNC3(unsigned long page,
				struct kmmio_fault_page **release_list)
{
	struct kmmio_fault_page *f;

	page &= PAGE_MASK;
	f = FUNC2(page);
	if (!f)
		return;

	f->count--;
	FUNC0(f->count < 0);
	if (!f->count) {
		FUNC1(f);
		f->release_next = *release_list;
		*release_list = f;
	}
}