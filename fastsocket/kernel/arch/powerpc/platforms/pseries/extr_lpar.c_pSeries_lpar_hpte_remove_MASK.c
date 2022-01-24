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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int HPTES_PER_GROUP ; 
 int /*<<< orphan*/  H_ANDCOND ; 
 unsigned long H_NOT_FOUND ; 
 unsigned long H_RESOURCE ; 
 unsigned long H_SUCCESS ; 
 int FUNC1 () ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ,unsigned long,int,unsigned long*,unsigned long*) ; 

__attribute__((used)) static long FUNC3(unsigned long hpte_group)
{
	unsigned long slot_offset;
	unsigned long lpar_rc;
	int i;
	unsigned long dummy1, dummy2;

	/* pick a random slot to start at */
	slot_offset = FUNC1() & 0x7;

	for (i = 0; i < HPTES_PER_GROUP; i++) {

		/* don't remove a bolted entry */
		lpar_rc = FUNC2(H_ANDCOND, hpte_group + slot_offset,
					   (0x1UL << 4), &dummy1, &dummy2);
		if (lpar_rc == H_SUCCESS)
			return i;

		/*
		 * The test for adjunct partition is performed before the
		 * ANDCOND test.  H_RESOURCE may be returned, so we need to
		 * check for that as well.
		 */
		FUNC0(lpar_rc != H_NOT_FOUND && lpar_rc != H_RESOURCE);

		slot_offset++;
		slot_offset &= 0x7;
	}

	return -1;
}