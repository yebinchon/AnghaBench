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
struct page {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 unsigned int PAGE_SHIFT ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 unsigned int to_address ; 
 int /*<<< orphan*/  v6_lock ; 

__attribute__((used)) static void FUNC11(struct page *page, unsigned long vaddr)
{
	unsigned int offset = FUNC0(vaddr);
	unsigned long to = to_address + (offset << PAGE_SHIFT);

	/* FIXME: not highmem safe */
	FUNC3(FUNC5(page));

	/*
	 * Now clear the page using the same cache colour as
	 * the pages ultimate destination.
	 */
	FUNC9(&v6_lock);

	FUNC8(FUNC1(to_address) + offset, FUNC7(FUNC6(page), PAGE_KERNEL), 0);
	FUNC4(to);
	FUNC2((void *)to);

	FUNC10(&v6_lock);
}