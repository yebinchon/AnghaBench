#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct __vxge_hw_vpath_handle {TYPE_3__* vpath; } ;
struct TYPE_6__ {TYPE_2__* hldev; int /*<<< orphan*/  vp_id; } ;
struct TYPE_5__ {TYPE_1__* common_reg; } ;
struct TYPE_4__ {int /*<<< orphan*/  set_msix_mask_all_vect; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(struct __vxge_hw_vpath_handle *vp)
{

	FUNC0(
		(u32)FUNC1(FUNC2(vp->vpath->vp_id), 0, 32),
		&vp->vpath->hldev->common_reg->set_msix_mask_all_vect);

	return;
}