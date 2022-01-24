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
typedef  int /*<<< orphan*/  u8 ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_MSG_IOV ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct bnx2x*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC11(struct bnx2x *bp, u8 abs_vfid)
{
	/* set the VF-PF association in the FW */
	FUNC10(bp, FUNC3(abs_vfid), FUNC1(bp));
	FUNC9(bp, FUNC3(abs_vfid), 1);

	/* clear vf errors*/
	FUNC8(bp, abs_vfid);
	FUNC7(bp, abs_vfid);

	/* internal vf-enable - pretend */
	FUNC5(bp, FUNC4(bp, abs_vfid));
	FUNC2(BNX2X_MSG_IOV, "enabling internal access for vf %x\n", abs_vfid);
	FUNC6(bp, true);
	FUNC5(bp, FUNC0(bp));
}