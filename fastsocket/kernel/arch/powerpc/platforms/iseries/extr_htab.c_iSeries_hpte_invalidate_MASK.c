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
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long HPTE_V_VALID ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 unsigned long FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 

__attribute__((used)) static void FUNC7(unsigned long slot, unsigned long va,
				    int psize, int ssize, int local)
{
	unsigned long hpte_v;
	unsigned long avpn = va >> 23;
	unsigned long flags;

	FUNC6(flags);

	FUNC2(slot);

	hpte_v = FUNC3(slot);

	if ((FUNC0(hpte_v) == avpn) && (hpte_v & HPTE_V_VALID))
		FUNC1(slot, 0, 0);

	FUNC4(slot);

	FUNC5(flags);
}