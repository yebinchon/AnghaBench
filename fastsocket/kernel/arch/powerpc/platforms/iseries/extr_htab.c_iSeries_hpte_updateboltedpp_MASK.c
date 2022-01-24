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
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long HW_PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (long,unsigned long) ; 
 int MMU_PAGE_4K ; 
 int /*<<< orphan*/  MMU_SEGSIZE_256M ; 
 unsigned long FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 long FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(unsigned long newpp, unsigned long ea,
					int psize, int ssize)
{
	unsigned long vsid,va,vpn;
	long slot;

	FUNC0(psize != MMU_PAGE_4K);

	vsid = FUNC2(ea, MMU_SEGSIZE_256M);
	va = (vsid << 28) | (ea & 0x0fffffff);
	vpn = va >> HW_PAGE_SHIFT;
	slot = FUNC3(vpn);
	if (slot == -1)
		FUNC4("updateboltedpp: Could not find page to bolt\n");
	FUNC1(slot, newpp);
}