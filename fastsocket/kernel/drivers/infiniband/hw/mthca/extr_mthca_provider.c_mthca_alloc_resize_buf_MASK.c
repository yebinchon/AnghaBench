#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mthca_dev {int dummy; } ;
struct mthca_cq {int /*<<< orphan*/  lock; TYPE_1__* resize_buf; } ;
struct TYPE_3__ {int cqe; int /*<<< orphan*/  state; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  CQ_RESIZE_ALLOC ; 
 int /*<<< orphan*/  CQ_RESIZE_READY ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mthca_dev*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct mthca_dev *dev, struct mthca_cq *cq,
				  int entries)
{
	int ret;

	FUNC3(&cq->lock);
	if (cq->resize_buf) {
		ret = -EBUSY;
		goto unlock;
	}

	cq->resize_buf = FUNC1(sizeof *cq->resize_buf, GFP_ATOMIC);
	if (!cq->resize_buf) {
		ret = -ENOMEM;
		goto unlock;
	}

	cq->resize_buf->state = CQ_RESIZE_ALLOC;

	ret = 0;

unlock:
	FUNC4(&cq->lock);

	if (ret)
		return ret;

	ret = FUNC2(dev, &cq->resize_buf->buf, entries);
	if (ret) {
		FUNC3(&cq->lock);
		FUNC0(cq->resize_buf);
		cq->resize_buf = NULL;
		FUNC4(&cq->lock);
		return ret;
	}

	cq->resize_buf->cqe = entries - 1;

	FUNC3(&cq->lock);
	cq->resize_buf->state = CQ_RESIZE_READY;
	FUNC4(&cq->lock);

	return 0;
}