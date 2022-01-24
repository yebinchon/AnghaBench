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
struct kmmio_fault_page {int count; unsigned long page; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 unsigned long PAGE_MASK ; 
 scalar_t__ FUNC0 (struct kmmio_fault_page*) ; 
 struct kmmio_fault_page* FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct kmmio_fault_page*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 struct kmmio_fault_page* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(unsigned long page)
{
	struct kmmio_fault_page *f;

	page &= PAGE_MASK;
	f = FUNC1(page);
	if (f) {
		if (!f->count)
			FUNC0(f);
		f->count++;
		return 0;
	}

	f = FUNC4(sizeof(*f), GFP_ATOMIC);
	if (!f)
		return -1;

	f->count = 1;
	f->page = page;

	if (FUNC0(f)) {
		FUNC2(f);
		return -1;
	}

	FUNC5(&f->list, FUNC3(f->page));

	return 0;
}