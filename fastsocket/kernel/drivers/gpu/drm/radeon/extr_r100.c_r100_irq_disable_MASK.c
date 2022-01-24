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
typedef  int /*<<< orphan*/  u32 ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R_000040_GEN_INT_CNTL ; 
 int /*<<< orphan*/  R_000044_GEN_INT_STATUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(struct radeon_device *rdev)
{
	u32 tmp;

	FUNC1(R_000040_GEN_INT_CNTL, 0);
	/* Wait and acknowledge irq */
	FUNC2(1);
	tmp = FUNC0(R_000044_GEN_INT_STATUS);
	FUNC1(R_000044_GEN_INT_STATUS, tmp);
}