#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct mthca_resize_cq {int /*<<< orphan*/  lkey; } ;
struct TYPE_6__ {int max_cqes; } ;
struct mthca_dev {TYPE_1__ limits; } ;
struct TYPE_7__ {int /*<<< orphan*/  lkey; } ;
struct TYPE_8__ {TYPE_2__ ibmr; } ;
struct mthca_cq_buf {TYPE_3__ mr; } ;
struct TYPE_9__ {int cqe; } ;
struct mthca_cq {int /*<<< orphan*/  mutex; int /*<<< orphan*/  lock; TYPE_5__* resize_buf; TYPE_4__ ibcq; struct mthca_cq_buf buf; scalar_t__ is_kernel; int /*<<< orphan*/  cqn; } ;
struct ib_udata {int dummy; } ;
struct ib_cq {int cqe; int /*<<< orphan*/  device; } ;
struct TYPE_10__ {int cqe; scalar_t__ state; struct mthca_cq_buf buf; } ;

/* Variables and functions */
 scalar_t__ CQ_RESIZE_READY ; 
 int EFAULT ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct mthca_resize_cq*,struct ib_udata*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int FUNC3 (struct mthca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mthca_dev*,struct mthca_cq*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mthca_cq*) ; 
 int /*<<< orphan*/  FUNC6 (struct mthca_dev*,struct mthca_cq_buf*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct mthca_cq* FUNC12 (struct ib_cq*) ; 
 struct mthca_dev* FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct ib_cq *ibcq, int entries, struct ib_udata *udata)
{
	struct mthca_dev *dev = FUNC13(ibcq->device);
	struct mthca_cq *cq = FUNC12(ibcq);
	struct mthca_resize_cq ucmd;
	u32 lkey;
	int ret;

	if (entries < 1 || entries > dev->limits.max_cqes)
		return -EINVAL;

	FUNC7(&cq->mutex);

	entries = FUNC9(entries + 1);
	if (entries == ibcq->cqe + 1) {
		ret = 0;
		goto out;
	}

	if (cq->is_kernel) {
		ret = FUNC4(dev, cq, entries);
		if (ret)
			goto out;
		lkey = cq->resize_buf->buf.mr.ibmr.lkey;
	} else {
		if (FUNC0(&ucmd, udata, sizeof ucmd)) {
			ret = -EFAULT;
			goto out;
		}
		lkey = ucmd.lkey;
	}

	ret = FUNC3(dev, cq->cqn, lkey, FUNC1(entries));

	if (ret) {
		if (cq->resize_buf) {
			FUNC6(dev, &cq->resize_buf->buf,
					  cq->resize_buf->cqe);
			FUNC2(cq->resize_buf);
			FUNC10(&cq->lock);
			cq->resize_buf = NULL;
			FUNC11(&cq->lock);
		}
		goto out;
	}

	if (cq->is_kernel) {
		struct mthca_cq_buf tbuf;
		int tcqe;

		FUNC10(&cq->lock);
		if (cq->resize_buf->state == CQ_RESIZE_READY) {
			FUNC5(cq);
			tbuf         = cq->buf;
			tcqe         = cq->ibcq.cqe;
			cq->buf      = cq->resize_buf->buf;
			cq->ibcq.cqe = cq->resize_buf->cqe;
		} else {
			tbuf = cq->resize_buf->buf;
			tcqe = cq->resize_buf->cqe;
		}

		FUNC2(cq->resize_buf);
		cq->resize_buf = NULL;
		FUNC11(&cq->lock);

		FUNC6(dev, &tbuf, tcqe);
	} else
		ibcq->cqe = entries - 1;

out:
	FUNC8(&cq->mutex);

	return ret;
}