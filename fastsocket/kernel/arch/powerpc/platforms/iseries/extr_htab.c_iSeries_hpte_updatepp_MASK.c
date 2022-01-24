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
struct hash_pte {int v; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,unsigned long) ; 
 int HPTE_V_VALID ; 
 int /*<<< orphan*/  FUNC1 (struct hash_pte*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  MMU_PAGE_4K ; 
 int /*<<< orphan*/  MMU_SEGSIZE_256M ; 
 unsigned long FUNC3 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 

__attribute__((used)) static long FUNC6(unsigned long slot, unsigned long newpp,
			unsigned long va, int psize, int ssize, int local)
{
	struct hash_pte hpte;
	unsigned long want_v;

	FUNC4(slot);

	FUNC1(&hpte, slot);
	want_v = FUNC3(va, MMU_PAGE_4K, MMU_SEGSIZE_256M);

	if (FUNC0(hpte.v, want_v) && (hpte.v & HPTE_V_VALID)) {
		/*
		 * Hypervisor expects bits as NPPP, which is
		 * different from how they are mapped in our PP.
		 */
		FUNC2(slot, (newpp & 0x3) | ((newpp & 0x4) << 1));
		FUNC5(slot);
		return 0;
	}
	FUNC5(slot);

	return -1;
}