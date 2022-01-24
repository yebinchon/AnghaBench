#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_5__ {size_t locked_vm; } ;
struct TYPE_4__ {TYPE_2__* mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_IPC_LOCK ; 
 int ENOMEM ; 
 unsigned long PAGE_SHIFT ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  RLIMIT_MEMLOCK ; 
 int /*<<< orphan*/  FUNC0 (struct page**,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 int FUNC2 (TYPE_1__*,TYPE_2__*,unsigned long,size_t,int,int,struct page**,struct vm_area_struct**) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(unsigned long start_page, size_t num_pages,
				struct page **p, struct vm_area_struct **vma)
{
	unsigned long lock_limit;
	size_t got;
	int ret;

	lock_limit = FUNC3(RLIMIT_MEMLOCK) >> PAGE_SHIFT;

	if (num_pages > lock_limit && !FUNC1(CAP_IPC_LOCK)) {
		ret = -ENOMEM;
		goto bail;
	}

	for (got = 0; got < num_pages; got += ret) {
		ret = FUNC2(current, current->mm,
				     start_page + got * PAGE_SIZE,
				     num_pages - got, 1, 1,
				     p + got, vma);
		if (ret < 0)
			goto bail_release;
	}

	current->mm->locked_vm += num_pages;

	ret = 0;
	goto bail;

bail_release:
	FUNC0(p, got, 0);
bail:
	return ret;
}