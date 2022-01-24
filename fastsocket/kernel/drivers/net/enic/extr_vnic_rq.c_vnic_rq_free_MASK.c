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
struct vnic_rq {int /*<<< orphan*/ * ctrl; int /*<<< orphan*/ ** bufs; int /*<<< orphan*/  ring; struct vnic_dev* vdev; } ;
struct vnic_dev {int dummy; } ;

/* Variables and functions */
 unsigned int VNIC_RQ_BUF_BLKS_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct vnic_dev*,int /*<<< orphan*/ *) ; 

void FUNC2(struct vnic_rq *rq)
{
	struct vnic_dev *vdev;
	unsigned int i;

	vdev = rq->vdev;

	FUNC1(vdev, &rq->ring);

	for (i = 0; i < VNIC_RQ_BUF_BLKS_MAX; i++) {
		if (rq->bufs[i]) {
			FUNC0(rq->bufs[i]);
			rq->bufs[i] = NULL;
		}
	}

	rq->ctrl = NULL;
}