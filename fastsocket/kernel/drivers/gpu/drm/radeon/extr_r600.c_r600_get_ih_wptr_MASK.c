#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_3__ {int rptr; int ptr_mask; } ;
struct TYPE_4__ {int /*<<< orphan*/ * wb; scalar_t__ enabled; } ;
struct radeon_device {TYPE_1__ ih; int /*<<< orphan*/  dev; TYPE_2__ wb; } ;

/* Variables and functions */
 int /*<<< orphan*/  IH_RB_CNTL ; 
 int /*<<< orphan*/  IH_RB_WPTR ; 
 int IH_WPTR_OVERFLOW_CLEAR ; 
 int R600_WB_IH_WPTR_OFFSET ; 
 int RB_OVERFLOW ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC4(struct radeon_device *rdev)
{
	u32 wptr, tmp;

	if (rdev->wb.enabled)
		wptr = FUNC3(rdev->wb.wb[R600_WB_IH_WPTR_OFFSET/4]);
	else
		wptr = FUNC0(IH_RB_WPTR);

	if (wptr & RB_OVERFLOW) {
		/* When a ring buffer overflow happen start parsing interrupt
		 * from the last not overwritten vector (wptr + 16). Hopefully
		 * this should allow us to catchup.
		 */
		FUNC2(rdev->dev, "IH ring buffer overflow (0x%08X, %d, %d)\n",
			wptr, rdev->ih.rptr, (wptr + 16) + rdev->ih.ptr_mask);
		rdev->ih.rptr = (wptr + 16) & rdev->ih.ptr_mask;
		tmp = FUNC0(IH_RB_CNTL);
		tmp |= IH_WPTR_OVERFLOW_CLEAR;
		FUNC1(IH_RB_CNTL, tmp);
	}
	return (wptr & rdev->ih.ptr_mask);
}