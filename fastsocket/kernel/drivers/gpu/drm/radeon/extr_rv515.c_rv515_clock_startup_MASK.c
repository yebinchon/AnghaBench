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
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R_00000F_CP_DYN_CNTL ; 
 int /*<<< orphan*/  R_000011_E2_DYN_CNTL ; 
 int /*<<< orphan*/  R_000013_IDCT_DYN_CNTL ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,int) ; 
 int radeon_dynclks ; 

void FUNC6(struct radeon_device *rdev)
{
	if (radeon_dynclks != -1 && radeon_dynclks)
		FUNC5(rdev, 1);
	/* We need to force on some of the block */
	FUNC4(R_00000F_CP_DYN_CNTL,
		FUNC0(R_00000F_CP_DYN_CNTL) | FUNC1(1));
	FUNC4(R_000011_E2_DYN_CNTL,
		FUNC0(R_000011_E2_DYN_CNTL) | FUNC2(1));
	FUNC4(R_000013_IDCT_DYN_CNTL,
		FUNC0(R_000013_IDCT_DYN_CNTL) | FUNC3(1));
}