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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_L2C_SPAR4 ; 
 int /*<<< orphan*/  OCTEON_CN38XX ; 
 int /*<<< orphan*/  OCTEON_CN58XX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 () ; 

int FUNC5(uint32_t mask)
{
	uint32_t valid_mask;

	valid_mask = 0xff;

	if (FUNC0(OCTEON_CN58XX) || FUNC0(OCTEON_CN38XX)) {
		if (FUNC4())
			valid_mask = 0xf;
	} else if (FUNC4())
		valid_mask = 0x3;

	mask &= valid_mask;

	/* A UMSK setting which blocks all L2C Ways is an error. */
	if (mask == valid_mask)
		return -1;
	/* Check to make sure current mask & new mask don't block all ways */
	if (((mask | FUNC1()) & valid_mask) ==
	    valid_mask)
		return -1;

	FUNC3(CVMX_L2C_SPAR4,
		       (FUNC2(CVMX_L2C_SPAR4) & ~0xFF) | mask);
	return 0;
}