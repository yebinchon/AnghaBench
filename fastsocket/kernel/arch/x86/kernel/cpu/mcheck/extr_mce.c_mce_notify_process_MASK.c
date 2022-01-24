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
struct mce_info {unsigned long paddr; int /*<<< orphan*/  restartable; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCE_VECTOR ; 
 int MF_ACTION_REQUIRED ; 
 int MF_MUST_KILL ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  SIGBUS ; 
 int /*<<< orphan*/  TIF_MCE_NOTIFY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mce_info*) ; 
 struct mce_info* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (unsigned long,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

void FUNC7(void)
{
	unsigned long pfn;
	struct mce_info *mi = FUNC3();
	int flags = MF_ACTION_REQUIRED;

	if (!mi)
		FUNC4("Lost physical address for unconsumed uncorrectable error", NULL, NULL);
	pfn = mi->paddr >> PAGE_SHIFT;

	FUNC0(TIF_MCE_NOTIFY);

	FUNC6("Uncorrected hardware memory error in user-access at %llx",
		 mi->paddr);
	/*
	 * We must call memory_failure() here even if the current process is
	 * doomed. We still need to mark the page as poisoned and alert any
	 * other users of the page.
	 */
	if (!mi->restartable)
		flags |= MF_MUST_KILL;
	if (FUNC5(pfn, MCE_VECTOR, flags) < 0) {
		FUNC6("Memory error not recovered");
		FUNC1(SIGBUS, current);
	}
	FUNC2(mi);
}