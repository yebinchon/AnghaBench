#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int enabled; } ;
struct radeon_device {TYPE_1__ ih; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENABLE_INTR ; 
 int /*<<< orphan*/  IH_CNTL ; 
 int /*<<< orphan*/  IH_RB_CNTL ; 
 int /*<<< orphan*/  IH_RB_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct radeon_device *rdev)
{
	u32 ih_cntl = FUNC0(IH_CNTL);
	u32 ih_rb_cntl = FUNC0(IH_RB_CNTL);

	ih_cntl |= ENABLE_INTR;
	ih_rb_cntl |= IH_RB_ENABLE;
	FUNC1(IH_CNTL, ih_cntl);
	FUNC1(IH_RB_CNTL, ih_rb_cntl);
	rdev->ih.enabled = true;
}