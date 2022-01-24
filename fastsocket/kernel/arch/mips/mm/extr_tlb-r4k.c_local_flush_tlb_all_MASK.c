#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int tlbsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FLUSH_ITLB ; 
 unsigned long FUNC2 (int) ; 
 TYPE_1__ current_cpu_data ; 
 int /*<<< orphan*/  FUNC3 () ; 
 unsigned long FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

void FUNC12(void)
{
	unsigned long flags;
	unsigned long old_ctx;
	int entry;

	FUNC0(flags);
	/* Save old context and create impossible VPN2 value */
	old_ctx = FUNC4();
	FUNC9(0);
	FUNC10(0);

	entry = FUNC5();

	/* Blast 'em all away. */
	while (entry < current_cpu_data.tlbsize) {
		/* Make sure all entries differ. */
		FUNC8(FUNC2(entry));
		FUNC11(entry);
		FUNC3();
		FUNC6();
		entry++;
	}
	FUNC7();
	FUNC8(old_ctx);
	FLUSH_ITLB;
	FUNC1(flags);
}