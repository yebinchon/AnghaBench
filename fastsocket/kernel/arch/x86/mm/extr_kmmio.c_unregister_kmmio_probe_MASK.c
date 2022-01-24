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
struct kmmio_probe {unsigned long len; unsigned long addr; int /*<<< orphan*/  list; } ;
struct kmmio_fault_page {int dummy; } ;
struct kmmio_delayed_release {int /*<<< orphan*/  rcu; struct kmmio_fault_page* release_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 unsigned long PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct kmmio_delayed_release* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kmmio_count ; 
 int /*<<< orphan*/  kmmio_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,struct kmmio_fault_page**) ; 
 int /*<<< orphan*/  remove_kmmio_fault_pages ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC7(struct kmmio_probe *p)
{
	unsigned long flags;
	unsigned long size = 0;
	const unsigned long size_lim = p->len + (p->addr & ~PAGE_MASK);
	struct kmmio_fault_page *release_list = NULL;
	struct kmmio_delayed_release *drelease;

	FUNC5(&kmmio_lock, flags);
	while (size < size_lim) {
		FUNC4(p->addr + size, &release_list);
		size += PAGE_SIZE;
	}
	FUNC2(&p->list);
	kmmio_count--;
	FUNC6(&kmmio_lock, flags);

	drelease = FUNC1(sizeof(*drelease), GFP_ATOMIC);
	if (!drelease) {
		FUNC3("kmmio: leaking kmmio_fault_page objects.\n");
		return;
	}
	drelease->release_list = release_list;

	/*
	 * This is not really RCU here. We have just disarmed a set of
	 * pages so that they cannot trigger page faults anymore. However,
	 * we cannot remove the pages from kmmio_page_table,
	 * because a probe hit might be in flight on another CPU. The
	 * pages are collected into a list, and they will be removed from
	 * kmmio_page_table when it is certain that no probe hit related to
	 * these pages can be in flight. RCU grace period sounds like a
	 * good choice.
	 *
	 * If we removed the pages too early, kmmio page fault handler might
	 * not find the respective kmmio_fault_page and determine it's not
	 * a kmmio fault, when it actually is. This would lead to madness.
	 */
	FUNC0(&drelease->rcu, remove_kmmio_fault_pages);
}