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
 int /*<<< orphan*/  CVMX_L2C_SPAR0 ; 
 int /*<<< orphan*/  CVMX_L2C_SPAR1 ; 
 int /*<<< orphan*/  CVMX_L2C_SPAR2 ; 
 int /*<<< orphan*/  CVMX_L2C_SPAR3 ; 
 int FUNC0 (int) ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

int FUNC5(uint32_t core, uint32_t mask)
{
	uint32_t field;
	uint32_t valid_mask;

	valid_mask = (0x1 << FUNC1()) - 1;

	mask &= valid_mask;

	/* A UMSK setting which blocks all L2C Ways is an error. */
	if (mask == valid_mask)
		return -1;

	/* Validate the core number */
	if (core >= FUNC2())
		return -1;

	/* Check to make sure current mask & new mask don't block all ways */
	if (((mask | FUNC0(core)) & valid_mask) ==
	    valid_mask)
		return -1;

	/* Use the lower two bits of core to determine the bit offset of the
	 * UMSK[] field in the L2C_SPAR register.
	 */
	field = (core & 0x3) * 8;

	/* Assign the new mask setting to the UMSK[] field in the appropriate
	 * L2C_SPAR register based on the core_num.
	 *
	 */
	switch (core & 0xC) {
	case 0x0:
		FUNC4(CVMX_L2C_SPAR0,
			       (FUNC3(CVMX_L2C_SPAR0) &
				~(0xFF << field)) | mask << field);
		break;
	case 0x4:
		FUNC4(CVMX_L2C_SPAR1,
			       (FUNC3(CVMX_L2C_SPAR1) &
				~(0xFF << field)) | mask << field);
		break;
	case 0x8:
		FUNC4(CVMX_L2C_SPAR2,
			       (FUNC3(CVMX_L2C_SPAR2) &
				~(0xFF << field)) | mask << field);
		break;
	case 0xC:
		FUNC4(CVMX_L2C_SPAR3,
			       (FUNC3(CVMX_L2C_SPAR3) &
				~(0xFF << field)) | mask << field);
		break;
	}
	return 0;
}