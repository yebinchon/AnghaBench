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
struct vnic_wq_copy {int /*<<< orphan*/  ring; TYPE_1__* ctrl; scalar_t__ to_clean_index; scalar_t__ to_use_index; } ;
struct TYPE_2__ {int /*<<< orphan*/  error_status; int /*<<< orphan*/  posted_index; int /*<<< orphan*/  fetch_index; int /*<<< orphan*/  enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct vnic_wq_copy*) ; 
 int /*<<< orphan*/  FUNC5 (struct vnic_wq_copy*,int,void (*) (struct vnic_wq_copy*,struct fcpio_host_req*)) ; 

void FUNC6(struct vnic_wq_copy *wq,
	void (*q_clean)(struct vnic_wq_copy *wq,
	struct fcpio_host_req *wq_desc))
{
	FUNC0(FUNC1(&wq->ctrl->enable));

	if (FUNC4(wq))
		FUNC5(wq, -1, q_clean);

	wq->to_use_index = wq->to_clean_index = 0;

	FUNC2(0, &wq->ctrl->fetch_index);
	FUNC2(0, &wq->ctrl->posted_index);
	FUNC2(0, &wq->ctrl->error_status);

	FUNC3(&wq->ring);
}