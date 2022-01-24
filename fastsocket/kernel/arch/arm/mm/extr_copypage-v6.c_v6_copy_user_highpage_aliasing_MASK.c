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
struct page {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 unsigned int PAGE_SHIFT ; 
 int /*<<< orphan*/  PG_dcache_dirty ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct page*) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 unsigned long from_address ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned long to_address ; 
 int /*<<< orphan*/  v6_lock ; 

__attribute__((used)) static void FUNC14(struct page *to,
	struct page *from, unsigned long vaddr)
{
	unsigned int offset = FUNC0(vaddr);
	unsigned long kfrom, kto;

	if (FUNC13(PG_dcache_dirty, &from->flags))
		FUNC2(FUNC7(from), from);

	/* FIXME: not highmem safe */
	FUNC4(FUNC6(to));

	/*
	 * Now copy the page using the same cache colour as the
	 * pages ultimate destination.
	 */
	FUNC11(&v6_lock);

	FUNC10(FUNC1(from_address) + offset, FUNC9(FUNC8(from), PAGE_KERNEL), 0);
	FUNC10(FUNC1(to_address) + offset, FUNC9(FUNC8(to), PAGE_KERNEL), 0);

	kfrom = from_address + (offset << PAGE_SHIFT);
	kto   = to_address + (offset << PAGE_SHIFT);

	FUNC5(kfrom);
	FUNC5(kto);

	FUNC3((void *)kto, (void *)kfrom);

	FUNC12(&v6_lock);
}