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
typedef  int u64 ;
typedef  size_t u32 ;
struct TYPE_3__ {scalar_t__ intr_mode; } ;
struct __vxge_hw_device {int vpaths_deployed; int* tim_int_mask0; size_t* tim_int_mask1; TYPE_2__* common_reg; TYPE_1__ config; int /*<<< orphan*/ * virtual_paths; } ;
struct TYPE_4__ {int /*<<< orphan*/  titan_general_int_status; int /*<<< orphan*/  tim_int_mask1; int /*<<< orphan*/  tim_int_status1; int /*<<< orphan*/  tim_int_mask0; int /*<<< orphan*/  tim_int_status0; } ;

/* Variables and functions */
 scalar_t__ VXGE_HW_INTR_MODE_IRQLINE ; 
 size_t VXGE_HW_MAX_VIRTUAL_PATHS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t VXGE_HW_VPATH_INTR_RX ; 
 size_t VXGE_HW_VPATH_INTR_TX ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct __vxge_hw_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct __vxge_hw_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 

void FUNC8(struct __vxge_hw_device *hldev)
{
	u32 i;
	u64 val64;
	u32 val32;

	FUNC3(hldev);

	for (i = 0; i < VXGE_HW_MAX_VIRTUAL_PATHS; i++) {

		if (!(hldev->vpaths_deployed & FUNC6(i)))
			continue;

		FUNC5(
			FUNC0(&hldev->virtual_paths[i]));
	}

	if (hldev->config.intr_mode == VXGE_HW_INTR_MODE_IRQLINE) {
		val64 = hldev->tim_int_mask0[VXGE_HW_VPATH_INTR_TX] |
			hldev->tim_int_mask0[VXGE_HW_VPATH_INTR_RX];

		if (val64 != 0) {
			FUNC7(val64, &hldev->common_reg->tim_int_status0);

			FUNC7(~val64, &hldev->common_reg->tim_int_mask0);
		}

		val32 = hldev->tim_int_mask1[VXGE_HW_VPATH_INTR_TX] |
			hldev->tim_int_mask1[VXGE_HW_VPATH_INTR_RX];

		if (val32 != 0) {
			FUNC1(val32,
					&hldev->common_reg->tim_int_status1);

			FUNC1(~val32,
					&hldev->common_reg->tim_int_mask1);
		}
	}

	val64 = FUNC2(&hldev->common_reg->titan_general_int_status);

	FUNC4(hldev);

	return;
}