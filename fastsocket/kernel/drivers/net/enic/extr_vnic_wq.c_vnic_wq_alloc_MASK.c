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
struct vnic_wq {unsigned int index; int /*<<< orphan*/  ring; int /*<<< orphan*/  ctrl; struct vnic_dev* vdev; } ;
struct vnic_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RES_TYPE_WQ ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int FUNC1 (struct vnic_dev*,int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct vnic_dev*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC3 (struct vnic_wq*) ; 
 int /*<<< orphan*/  FUNC4 (struct vnic_wq*) ; 
 int /*<<< orphan*/  FUNC5 (struct vnic_wq*) ; 

int FUNC6(struct vnic_dev *vdev, struct vnic_wq *wq, unsigned int index,
	unsigned int desc_count, unsigned int desc_size)
{
	int err;

	wq->index = index;
	wq->vdev = vdev;

	wq->ctrl = FUNC2(vdev, RES_TYPE_WQ, index);
	if (!wq->ctrl) {
		FUNC0("Failed to hook WQ[%d] resource\n", index);
		return -EINVAL;
	}

	FUNC4(wq);

	err = FUNC1(vdev, &wq->ring, desc_count, desc_size);
	if (err)
		return err;

	err = FUNC3(wq);
	if (err) {
		FUNC5(wq);
		return err;
	}

	return 0;
}