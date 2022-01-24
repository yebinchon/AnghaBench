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
 int /*<<< orphan*/  R_000070_MC_IND_INDEX ; 
 int /*<<< orphan*/  R_000074_MC_IND_DATA ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

void FUNC4(struct radeon_device *rdev, uint32_t reg, uint32_t v)
{
	FUNC3(R_000070_MC_IND_INDEX, FUNC0(reg) |
		FUNC1(1) | FUNC2(1));
	FUNC3(R_000074_MC_IND_DATA, v);
}