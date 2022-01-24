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
 int /*<<< orphan*/  GFP_ATOMIC ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

void *FUNC8(unsigned long addr)
{
	void *bounce = (void *) addr;
	unsigned long size;

	FUNC1();
	FUNC5();
	if (FUNC3(addr)) {
		size = PAGE_SIZE - (addr & ~PAGE_MASK);
		bounce = (void *) FUNC0(GFP_ATOMIC);
		if (bounce)
			FUNC4(bounce, (void *) FUNC2(addr), size);
	}
	FUNC6();
	FUNC7();
	return bounce;
}