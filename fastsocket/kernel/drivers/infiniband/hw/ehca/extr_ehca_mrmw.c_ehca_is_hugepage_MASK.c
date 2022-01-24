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

/* Variables and functions */
 scalar_t__ EHCA_HUGEPAGESHIFT ; 
 unsigned long EHCA_HUGEPAGE_PFN_MASK ; 
 scalar_t__ PAGE_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 

__attribute__((used)) static int FUNC2(unsigned long pfn)
{
	int page_order;

	if (pfn & EHCA_HUGEPAGE_PFN_MASK)
		return 0;

	page_order = FUNC0(FUNC1(pfn));
	if (page_order + PAGE_SHIFT != EHCA_HUGEPAGESHIFT)
		return 0;

	return 1;
}