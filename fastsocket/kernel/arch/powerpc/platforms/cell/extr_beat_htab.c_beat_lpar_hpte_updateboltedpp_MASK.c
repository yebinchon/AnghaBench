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
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MMU_SEGSIZE_256M ; 
 int /*<<< orphan*/  beat_htab_lock ; 
 unsigned long FUNC1 (unsigned long,int) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned long FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(unsigned long newpp,
					  unsigned long ea,
					  int psize, int ssize)
{
	unsigned long lpar_rc, slot, vsid, va;
	u64 dummy0, dummy1;

	vsid = FUNC3(ea, MMU_SEGSIZE_256M);
	va = (vsid << 28) | (ea & 0x0fffffff);

	FUNC4(&beat_htab_lock);
	slot = FUNC1(va, psize);
	FUNC0(slot == -1);

	lpar_rc = FUNC2(0, slot, 0, newpp, 0, 7,
		&dummy0, &dummy1);
	FUNC5(&beat_htab_lock);

	FUNC0(lpar_rc != 0);
}