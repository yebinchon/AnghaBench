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
struct nvme_queue {size_t cq_vector; int q_suspended; int /*<<< orphan*/  q_lock; } ;
struct nvme_dev {TYPE_1__* entry; struct nvme_queue** queues; } ;
struct TYPE_2__ {int vector; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvme_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvme_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct nvme_queue*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nvme_queue*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nvme_queue*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct nvme_dev *dev, int qid)
{
	struct nvme_queue *nvmeq = dev->queues[qid];
	int vector = dev->entry[nvmeq->cq_vector].vector;

	FUNC6(&nvmeq->q_lock);
	if (nvmeq->q_suspended) {
		FUNC7(&nvmeq->q_lock);
		return;
	}
	nvmeq->q_suspended = 1;
	FUNC7(&nvmeq->q_lock);

	FUNC3(vector, NULL);
	FUNC2(vector, nvmeq);

	/* Don't tell the adapter to delete the admin queue */
	if (qid) {
		FUNC1(dev, qid);
		FUNC0(dev, qid);
	}

	FUNC6(&nvmeq->q_lock);
	FUNC5(nvmeq);
	FUNC4(nvmeq, false);
	FUNC7(&nvmeq->q_lock);
}