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
typedef  int /*<<< orphan*/  uint32_t ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  C_000078_MC_IND_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R_000078_MC_INDEX ; 
 int /*<<< orphan*/  R_00007C_MC_DATA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

uint32_t FUNC3(struct radeon_device *rdev, uint32_t reg)
{
	uint32_t r;

	FUNC2(R_000078_MC_INDEX, FUNC1(reg));
	r = FUNC0(R_00007C_MC_DATA);
	FUNC2(R_000078_MC_INDEX, ~C_000078_MC_IND_ADDR);
	return r;
}