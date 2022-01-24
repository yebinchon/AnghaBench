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
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R_000078_MC_INDEX ; 
 int /*<<< orphan*/  R_00007C_MC_DATA ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

void FUNC3(struct radeon_device *rdev, uint32_t reg, uint32_t v)
{
	FUNC2(R_000078_MC_INDEX, FUNC0(reg) |
		FUNC1(1));
	FUNC2(R_00007C_MC_DATA, v);
	FUNC2(R_000078_MC_INDEX, 0x7F);
}