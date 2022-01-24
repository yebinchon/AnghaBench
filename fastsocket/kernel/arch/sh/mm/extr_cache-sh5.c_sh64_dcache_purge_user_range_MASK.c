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
struct mm_struct {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long PMD_MASK ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*,unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct mm_struct *mm,
			  unsigned long start, unsigned long end)
{
	int n_pages = ((end - start) >> PAGE_SHIFT);

	if (n_pages >= 64 || ((start ^ (end - 1)) & PMD_MASK)) {
		FUNC1();
	} else {
		/* Small range, covered by a single page table page */
		start &= PAGE_MASK;	/* should already be so */
		end = FUNC0(end);	/* should already be so */
		FUNC2(mm, start, end);
	}
}