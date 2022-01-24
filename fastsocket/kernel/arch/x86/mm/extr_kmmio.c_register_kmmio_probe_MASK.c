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

/* Variables and functions */
 int EEXIST ; 
 unsigned long PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  kmmio_count ; 
 int /*<<< orphan*/  kmmio_lock ; 
 int /*<<< orphan*/  kmmio_probes ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC6(struct kmmio_probe *p)
{
	unsigned long flags;
	int ret = 0;
	unsigned long size = 0;
	const unsigned long size_lim = p->len + (p->addr & ~PAGE_MASK);

	FUNC4(&kmmio_lock, flags);
	if (FUNC1(p->addr)) {
		ret = -EEXIST;
		goto out;
	}
	kmmio_count++;
	FUNC2(&p->list, &kmmio_probes);
	while (size < size_lim) {
		if (FUNC0(p->addr + size))
			FUNC3("kmmio: Unable to set page fault.\n");
		size += PAGE_SIZE;
	}
out:
	FUNC5(&kmmio_lock, flags);
	/*
	 * XXX: What should I do here?
	 * Here was a call to global_flush_tlb(), but it does not exist
	 * anymore. It seems it's not needed after all.
	 */
	return ret;
}