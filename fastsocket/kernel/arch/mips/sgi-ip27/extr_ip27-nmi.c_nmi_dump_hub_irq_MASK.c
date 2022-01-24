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
typedef  int /*<<< orphan*/  nasid_t ;
typedef  int /*<<< orphan*/  hubreg_t ;

/* Variables and functions */
 int /*<<< orphan*/  PI_INT_MASK0_A ; 
 int /*<<< orphan*/  PI_INT_MASK0_B ; 
 int /*<<< orphan*/  PI_INT_MASK1_A ; 
 int /*<<< orphan*/  PI_INT_MASK1_B ; 
 int /*<<< orphan*/  PI_INT_PEND0 ; 
 int /*<<< orphan*/  PI_INT_PEND1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void FUNC2(nasid_t nasid, int slice)
{
	hubreg_t mask0, mask1, pend0, pend1;

	if (slice == 0) {				/* Slice A */
		mask0 = FUNC0(nasid, PI_INT_MASK0_A);
		mask1 = FUNC0(nasid, PI_INT_MASK1_A);
	} else {					/* Slice B */
		mask0 = FUNC0(nasid, PI_INT_MASK0_B);
		mask1 = FUNC0(nasid, PI_INT_MASK1_B);
	}

	pend0 = FUNC0(nasid, PI_INT_PEND0);
	pend1 = FUNC0(nasid, PI_INT_PEND1);

	FUNC1("PI_INT_MASK0: %16Lx PI_INT_MASK1: %16Lx\n", mask0, mask1);
	FUNC1("PI_INT_PEND0: %16Lx PI_INT_PEND1: %16Lx\n", pend0, pend1);
	FUNC1("\n\n");
}