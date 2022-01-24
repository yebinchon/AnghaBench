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
struct hash_pte {unsigned long r; } ;

/* Variables and functions */
 unsigned long HPTE_R_N ; 
 unsigned long HPTE_R_PP ; 
 unsigned long FUNC0 (unsigned long,int) ; 
 unsigned long FUNC1 (unsigned long,unsigned long,int) ; 
 struct hash_pte* htab_address ; 
 long FUNC2 (unsigned long,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(unsigned long newpp, unsigned long ea,
				       int psize, int ssize)
{
	unsigned long vsid, va;
	long slot;
	struct hash_pte *hptep;

	vsid = FUNC0(ea, ssize);
	va = FUNC1(ea, vsid, ssize);

	slot = FUNC2(va, psize, ssize);
	if (slot == -1)
		FUNC3("could not find page to bolt\n");
	hptep = htab_address + slot;

	/* Update the HPTE */
	hptep->r = (hptep->r & ~(HPTE_R_PP | HPTE_R_N)) |
		(newpp & (HPTE_R_PP | HPTE_R_N));

	/* Ensure it is out of the tlb too. */
	FUNC4(va, psize, ssize, 0);
}