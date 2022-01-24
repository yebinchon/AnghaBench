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
struct hash_pte {unsigned long v; unsigned long r; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned long HPTE_V_BOLTED ; 
 unsigned long HPTE_V_SECONDARY ; 
 unsigned long HPTE_V_VALID ; 
 unsigned long HW_PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (long,int,struct hash_pte*) ; 
 long FUNC3 (struct hash_pte*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (long,int,int /*<<< orphan*/ ) ; 
 int MMU_PAGE_4K ; 
 int /*<<< orphan*/  MMU_SEGSIZE_256M ; 
 int /*<<< orphan*/  PP_RWXX ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC7 (unsigned long,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long) ; 
 scalar_t__ FUNC11 (unsigned long) ; 

__attribute__((used)) static long FUNC12(unsigned long hpte_group, unsigned long va,
			 unsigned long pa, unsigned long rflags,
			 unsigned long vflags, int psize, int ssize)
{
	long slot;
	struct hash_pte lhpte;
	int secondary = 0;

	FUNC1(psize != MMU_PAGE_4K);

	/*
	 * The hypervisor tries both primary and secondary.
	 * If we are being called to insert in the secondary,
	 * it means we have already tried both primary and secondary,
	 * so we return failure immediately.
	 */
	if (vflags & HPTE_V_SECONDARY)
		return -1;

	FUNC8(hpte_group);

	slot = FUNC3(&lhpte, va >> HW_PAGE_SHIFT);
	if (FUNC11(lhpte.v & HPTE_V_VALID)) {
		if (vflags & HPTE_V_BOLTED) {
			FUNC5(slot, 0x10, 0);
			FUNC4(slot, PP_RWXX);
			FUNC9(hpte_group);
			if (slot < 0)
				return 0x8 | (slot & 7);
			else
				return slot & 7;
		}
		FUNC0();
	}

	if (slot == -1)	{ /* No available entry found in either group */
		FUNC9(hpte_group);
		return -1;
	}

	if (slot < 0) {		/* MSB set means secondary group */
		vflags |= HPTE_V_SECONDARY;
		secondary = 1;
		slot &= 0x7fffffffffffffff;
	}


	lhpte.v = FUNC7(va, MMU_PAGE_4K, MMU_SEGSIZE_256M) |
		vflags | HPTE_V_VALID;
	lhpte.r = FUNC6(FUNC10(pa), MMU_PAGE_4K) | rflags;

	/* Now fill in the actual HPTE */
	FUNC2(slot, secondary, &lhpte);

	FUNC9(hpte_group);

	return (secondary << 3) | (slot & 7);
}