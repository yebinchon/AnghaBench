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
typedef  scalar_t__ u16 ;

/* Variables and functions */
 scalar_t__ AMD_VSA_SIG ; 
 scalar_t__ GSW_VSA_SIG ; 
 int /*<<< orphan*/  VSA_VRC_DATA ; 
 int /*<<< orphan*/  VSA_VRC_INDEX ; 
 int /*<<< orphan*/  VSA_VR_SIGNATURE ; 
 int /*<<< orphan*/  VSA_VR_UNLOCK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(void)
{
	static int has_vsa2 = -1;

	if (has_vsa2 == -1) {
		u16 val;

		/*
		 * The VSA has virtual registers that we can query for a
		 * signature.
		 */
		FUNC1(VSA_VR_UNLOCK, VSA_VRC_INDEX);
		FUNC1(VSA_VR_SIGNATURE, VSA_VRC_INDEX);

		val = FUNC0(VSA_VRC_DATA);
		has_vsa2 = (val == AMD_VSA_SIG || val == GSW_VSA_SIG);
	}

	return has_vsa2;
}