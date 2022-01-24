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
typedef  int u32 ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int C_000009_ENABLE_PAGE_TABLES ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R_000009_MC_CNTL1 ; 
 int /*<<< orphan*/  R_000100_MC_PT0_CNTL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC3(struct radeon_device *rdev)
{
	u32 tmp;

	/* FIXME: disable out of gart access */
	FUNC1(R_000100_MC_PT0_CNTL, 0);
	tmp = FUNC0(R_000009_MC_CNTL1);
	FUNC1(R_000009_MC_CNTL1, tmp & C_000009_ENABLE_PAGE_TABLES);
	FUNC2(rdev);
}