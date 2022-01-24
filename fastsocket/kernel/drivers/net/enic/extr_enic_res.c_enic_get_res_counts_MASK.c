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
struct enic {void* intr_count; void* cq_count; void* rq_count; void* wq_count; int /*<<< orphan*/  vdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  RES_TYPE_CQ ; 
 int /*<<< orphan*/  RES_TYPE_INTR_CTRL ; 
 int /*<<< orphan*/  RES_TYPE_RQ ; 
 int /*<<< orphan*/  RES_TYPE_WQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,void*,void*,void*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct enic*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct enic *enic)
{
	enic->wq_count = FUNC2(enic->vdev, RES_TYPE_WQ);
	enic->rq_count = FUNC2(enic->vdev, RES_TYPE_RQ);
	enic->cq_count = FUNC2(enic->vdev, RES_TYPE_CQ);
	enic->intr_count = FUNC2(enic->vdev,
		RES_TYPE_INTR_CTRL);

	FUNC0(FUNC1(enic),
		"vNIC resources avail: wq %d rq %d cq %d intr %d\n",
		enic->wq_count, enic->rq_count,
		enic->cq_count, enic->intr_count);
}