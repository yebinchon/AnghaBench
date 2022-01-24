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
struct request_queue {struct nvme_ns* queuedata; } ;
struct nvme_queue {int /*<<< orphan*/  q_lock; int /*<<< orphan*/  sq_cong; int /*<<< orphan*/  sq_cong_wait; int /*<<< orphan*/  sq_full; int /*<<< orphan*/  q_suspended; } ;
struct nvme_ns {int /*<<< orphan*/  dev; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bio*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct nvme_queue* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nvme_queue*) ; 
 int FUNC6 (struct nvme_queue*,struct nvme_ns*,struct bio*) ; 
 int /*<<< orphan*/  FUNC7 (struct nvme_queue*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct request_queue *q, struct bio *bio)
{
	struct nvme_ns *ns = q->queuedata;
	struct nvme_queue *nvmeq = FUNC4(ns->dev);
	int result = -EBUSY;

	if (!nvmeq) {
		FUNC7(NULL);
		FUNC1(bio, -EIO);
		return 0;
	}

	FUNC8(&nvmeq->q_lock);
	if (!nvmeq->q_suspended && FUNC3(&nvmeq->sq_cong))
		result = FUNC6(nvmeq, ns, bio);
	if (FUNC10(result)) {
		if (FUNC3(&nvmeq->sq_cong))
			FUNC0(&nvmeq->sq_full, &nvmeq->sq_cong_wait);
		FUNC2(&nvmeq->sq_cong, bio);
	}

	FUNC5(nvmeq);
	FUNC9(&nvmeq->q_lock);
	FUNC7(nvmeq);
	return 0;
}