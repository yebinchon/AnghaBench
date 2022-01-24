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
 unsigned long ASID_MASK ; 
 unsigned long KSEG1 ; 
 int TLBSIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

void FUNC9(void)
{
	unsigned long flags;
	unsigned long old_ASID;
	int entry;

	FUNC2(flags);
	old_ASID = FUNC4() & ASID_MASK;
	FUNC3(0);			/* invalid */
	entry = FUNC7();		/* skip locked entries*/

	for (; entry < TLBSIZE; entry++) {
		FUNC8(entry);
		FUNC5(KSEG1);
		FUNC0();
		FUNC6();
	}
	FUNC5(old_ASID);
	FUNC1(flags);
}