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
typedef  int uchar ;
typedef  int /*<<< orphan*/  PortAddr ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int CC_DIAG ; 
 int CC_HALT ; 
 int CC_SINGLE_STEP ; 
 int CC_TEST ; 
 int CSW_HALTED ; 
 int /*<<< orphan*/  INS_HALT ; 
 int /*<<< orphan*/  INS_RFLAG_WTM ; 

__attribute__((used)) static int FUNC4(PortAddr iop_base)
{
	uchar cc_val;

	cc_val =
	    FUNC0(iop_base) &
	    (~(CC_SINGLE_STEP | CC_TEST | CC_DIAG));
	FUNC2(iop_base, (uchar)(cc_val | CC_HALT));
	FUNC3(iop_base, INS_HALT);
	FUNC3(iop_base, INS_RFLAG_WTM);
	if ((FUNC1(iop_base) & CSW_HALTED) == 0) {
		return (0);
	}
	return (1);
}