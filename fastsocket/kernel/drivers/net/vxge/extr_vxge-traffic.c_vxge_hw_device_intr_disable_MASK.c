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
typedef  size_t u32 ;
struct __vxge_hw_device {int vpaths_deployed; int /*<<< orphan*/ * virtual_paths; TYPE_1__* common_reg; } ;
struct TYPE_2__ {int /*<<< orphan*/  tim_int_mask1; int /*<<< orphan*/  tim_int_mask0; } ;

/* Variables and functions */
 int /*<<< orphan*/  VXGE_HW_DEFAULT_32 ; 
 int /*<<< orphan*/  VXGE_HW_INTR_MASK_ALL ; 
 size_t VXGE_HW_MAX_VIRTUAL_PATHS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct __vxge_hw_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(struct __vxge_hw_device *hldev)
{
	u32 i;

	FUNC2(hldev);

	/* mask all the tim interrupts */
	FUNC5(VXGE_HW_INTR_MASK_ALL, &hldev->common_reg->tim_int_mask0);
	FUNC1(VXGE_HW_DEFAULT_32,
		&hldev->common_reg->tim_int_mask1);

	for (i = 0; i < VXGE_HW_MAX_VIRTUAL_PATHS; i++) {

		if (!(hldev->vpaths_deployed & FUNC4(i)))
			continue;

		FUNC3(
			FUNC0(&hldev->virtual_paths[i]));
	}

	return;
}