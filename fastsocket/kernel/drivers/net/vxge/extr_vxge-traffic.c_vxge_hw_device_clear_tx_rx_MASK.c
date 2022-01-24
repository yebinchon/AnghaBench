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
struct __vxge_hw_device {int* tim_int_mask0; int* tim_int_mask1; TYPE_1__* common_reg; } ;
struct TYPE_2__ {int /*<<< orphan*/  tim_int_status1; int /*<<< orphan*/  tim_int_status0; } ;

/* Variables and functions */
 size_t VXGE_HW_VPATH_INTR_RX ; 
 size_t VXGE_HW_VPATH_INTR_TX ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 

void FUNC2(struct __vxge_hw_device *hldev)
{

	if ((hldev->tim_int_mask0[VXGE_HW_VPATH_INTR_TX] != 0) ||
	   (hldev->tim_int_mask0[VXGE_HW_VPATH_INTR_RX] != 0)) {
		FUNC1((hldev->tim_int_mask0[VXGE_HW_VPATH_INTR_TX] |
				 hldev->tim_int_mask0[VXGE_HW_VPATH_INTR_RX]),
				&hldev->common_reg->tim_int_status0);
	}

	if ((hldev->tim_int_mask1[VXGE_HW_VPATH_INTR_TX] != 0) ||
	   (hldev->tim_int_mask1[VXGE_HW_VPATH_INTR_RX] != 0)) {
		FUNC0(
				(hldev->tim_int_mask1[VXGE_HW_VPATH_INTR_TX] |
				 hldev->tim_int_mask1[VXGE_HW_VPATH_INTR_RX]),
				&hldev->common_reg->tim_int_status1);
	}

	return;
}