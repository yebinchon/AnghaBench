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
 unsigned long HPTE_V_AVPN ; 
 int /*<<< orphan*/  MMU_SEGSIZE_256M ; 
 int /*<<< orphan*/  beat_htab_lock ; 
 int FUNC2 (unsigned long) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int,int*,int*) ; 
 unsigned long FUNC4 (unsigned long,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static long FUNC7(unsigned long slot,
				    unsigned long newpp,
				    unsigned long va,
				    int psize, int ssize, int local)
{
	unsigned long lpar_rc;
	u64 dummy0, dummy1;
	unsigned long want_v;

	want_v = FUNC4(va, psize, MMU_SEGSIZE_256M);

	FUNC1("    update: "
		"avpnv=%016lx, slot=%016lx, psize: %d, newpp %016lx ... ",
		want_v & HPTE_V_AVPN, slot, psize, newpp);

	FUNC5(&beat_htab_lock);
	dummy0 = FUNC2(slot);
	if ((dummy0 & ~0x7FUL) != (want_v & ~0x7FUL)) {
		FUNC1("not found !\n");
		FUNC6(&beat_htab_lock);
		return -1;
	}

	lpar_rc = FUNC3(0, slot, 0, newpp, 0, 7, &dummy0,
					&dummy1);
	FUNC6(&beat_htab_lock);
	if (lpar_rc != 0 || dummy0 == 0) {
		FUNC1("not found !\n");
		return -1;
	}

	FUNC1("ok %lx %lx\n", dummy0, dummy1);

	FUNC0(lpar_rc != 0);

	return 0;
}