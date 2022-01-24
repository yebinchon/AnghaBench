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
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int PAGE_SHIFT ; 
 int SRMMU_PTD_PMASK ; 
 struct page* FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static struct page *FUNC4(pmd_t pmd)
{

	if (FUNC3(FUNC2(pmd)))
		FUNC0();
	return FUNC1((FUNC2(pmd) & SRMMU_PTD_PMASK) >> (PAGE_SHIFT-4));
}