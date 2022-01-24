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
typedef  int u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  HPTE_V_VALID ; 
 int /*<<< orphan*/  MMU_SEGSIZE_256M ; 
 int /*<<< orphan*/  beat_htab_lock ; 
 int FUNC2 (unsigned long) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 unsigned long FUNC4 (unsigned long,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(unsigned long slot, unsigned long va,
					 int psize, int ssize, int local)
{
	unsigned long want_v;
	unsigned long lpar_rc;
	u64 dummy1, dummy2;
	unsigned long flags;

	FUNC1("    inval : slot=%lx, va=%016lx, psize: %d, local: %d\n",
		slot, va, psize, local);
	want_v = FUNC4(va, psize, MMU_SEGSIZE_256M);

	FUNC5(&beat_htab_lock, flags);
	dummy1 = FUNC2(slot);

	if ((dummy1 & ~0x7FUL) != (want_v & ~0x7FUL)) {
		FUNC1("not found !\n");
		FUNC6(&beat_htab_lock, flags);
		return;
	}

	lpar_rc = FUNC3(0, slot, 0, 0, HPTE_V_VALID, 0,
		&dummy1, &dummy2);
	FUNC6(&beat_htab_lock, flags);

	FUNC0(lpar_rc != 0);
}