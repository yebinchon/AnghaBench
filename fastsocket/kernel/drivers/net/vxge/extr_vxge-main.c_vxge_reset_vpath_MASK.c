#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vxgedev {TYPE_2__* vpaths; int /*<<< orphan*/  vp_reset; int /*<<< orphan*/  state; } ;
typedef  enum vxge_hw_status { ____Placeholder_vxge_hw_status } vxge_hw_status ;
struct TYPE_4__ {scalar_t__ last_status; } ;
struct TYPE_5__ {int /*<<< orphan*/  fifo; TYPE_1__ ring; scalar_t__ handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  VXGE_ERR ; 
 int VXGE_HW_FAIL ; 
 scalar_t__ VXGE_HW_OK ; 
 int /*<<< orphan*/  __VXGE_STATE_RESET_CARD ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct vxgedev*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (struct vxgedev*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct vxgedev *vdev, int vp_id)
{
	enum vxge_hw_status status = VXGE_HW_OK;
	int ret = 0;

	/* check if device is down already */
	if (FUNC4(!FUNC1(vdev)))
		return 0;

	/* is device reset already scheduled */
	if (FUNC3(__VXGE_STATE_RESET_CARD, &vdev->state))
		return 0;

	if (vdev->vpaths[vp_id].handle) {
		if (FUNC9(vdev->vpaths[vp_id].handle)
				== VXGE_HW_OK) {
			if (FUNC1(vdev) &&
				FUNC8(
					vdev->vpaths[vp_id].handle)
					!= VXGE_HW_OK) {
				FUNC5(VXGE_ERR,
					"vxge_hw_vpath_recover_from_reset"
					"failed for vpath:%d", vp_id);
				return status;
			}
		} else {
			FUNC5(VXGE_ERR,
				"vxge_hw_vpath_reset failed for"
				"vpath:%d", vp_id);
				return status;
		}
	} else
		return VXGE_HW_FAIL;

	FUNC11(&vdev->vpaths[vp_id]);
	FUNC12(&vdev->vpaths[vp_id]);

	/* Enable all broadcast */
	FUNC6(vdev->vpaths[vp_id].handle);

	/* Enable the interrupts */
	FUNC13(vdev, vp_id);

	FUNC2();

	/* Enable the flow of traffic through the vpath */
	FUNC7(vdev->vpaths[vp_id].handle);

	FUNC2();
	FUNC10(vdev->vpaths[vp_id].handle);
	vdev->vpaths[vp_id].ring.last_status = VXGE_HW_OK;

	/* Vpath reset done */
	FUNC0(vp_id, &vdev->vp_reset);

	/* Start the vpath queue */
	FUNC14(&vdev->vpaths[vp_id].fifo, NULL);

	return ret;
}