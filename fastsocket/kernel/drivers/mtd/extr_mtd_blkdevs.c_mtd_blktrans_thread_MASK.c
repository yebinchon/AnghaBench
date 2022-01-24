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
struct request_queue {int /*<<< orphan*/  queue_lock; } ;
struct request {TYPE_2__* rq_disk; } ;
struct mtd_blktrans_ops {TYPE_1__* blkcore_priv; } ;
struct mtd_blktrans_dev {int /*<<< orphan*/  lock; struct mtd_blktrans_ops* tr; } ;
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;
struct TYPE_5__ {struct mtd_blktrans_dev* private_data; } ;
struct TYPE_4__ {struct request_queue* rq; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  PF_MEMALLOC ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (struct request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct request*,int) ; 
 struct request* FUNC2 (struct request_queue*) ; 
 TYPE_3__* current ; 
 int FUNC3 (struct mtd_blktrans_ops*,struct mtd_blktrans_dev*,struct request*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(void *arg)
{
	struct mtd_blktrans_ops *tr = arg;
	struct request_queue *rq = tr->blkcore_priv->rq;
	struct request *req = NULL;

	/* we might get involved when memory gets low, so use PF_MEMALLOC */
	current->flags |= PF_MEMALLOC;

	FUNC9(rq->queue_lock);

	while (!FUNC4()) {
		struct mtd_blktrans_dev *dev;
		int res;

		if (!req && !(req = FUNC2(rq))) {
			FUNC8(TASK_INTERRUPTIBLE);
			FUNC10(rq->queue_lock);
			FUNC7();
			FUNC9(rq->queue_lock);
			continue;
		}

		dev = req->rq_disk->private_data;
		tr = dev->tr;

		FUNC10(rq->queue_lock);

		FUNC5(&dev->lock);
		res = FUNC3(tr, dev, req);
		FUNC6(&dev->lock);

		FUNC9(rq->queue_lock);

		if (!FUNC1(req, res))
			req = NULL;
	}

	if (req)
		FUNC0(req, -EIO);

	FUNC10(rq->queue_lock);

	return 0;
}