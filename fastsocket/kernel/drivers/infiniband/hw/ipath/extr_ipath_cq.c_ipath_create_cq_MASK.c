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
typedef  int u32 ;
struct ipath_ibdev {scalar_t__ n_cqs_allocated; int /*<<< orphan*/  pending_lock; int /*<<< orphan*/  pending_mmaps; int /*<<< orphan*/  n_cqs_lock; } ;
struct ipath_cq_wc {scalar_t__ tail; scalar_t__ head; } ;
struct ib_cq {int cqe; } ;
struct ipath_cq {struct ipath_cq* ip; struct ib_cq ibcq; struct ipath_cq_wc* queue; int /*<<< orphan*/  comptask; int /*<<< orphan*/  lock; scalar_t__ triggered; int /*<<< orphan*/  notify; int /*<<< orphan*/  pending_mmaps; int /*<<< orphan*/  offset; } ;
struct ib_wc {int dummy; } ;
struct ib_uverbs_wc {int dummy; } ;
struct ib_udata {int outlen; } ;
struct ib_ucontext {int dummy; } ;
struct ib_device {int dummy; } ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct ib_cq* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IB_CQ_NONE ; 
 int FUNC1 (struct ib_udata*,int /*<<< orphan*/ *,int) ; 
 int ib_ipath_max_cqes ; 
 scalar_t__ ib_ipath_max_cqs ; 
 struct ipath_cq* FUNC2 (struct ipath_ibdev*,int,struct ib_ucontext*,struct ipath_cq_wc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipath_cq*) ; 
 struct ipath_cq* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  send_complete ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 struct ipath_ibdev* FUNC12 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct ipath_cq_wc*) ; 
 struct ipath_cq_wc* FUNC14 (int) ; 

struct ib_cq *FUNC15(struct ib_device *ibdev, int entries, int comp_vector,
			      struct ib_ucontext *context,
			      struct ib_udata *udata)
{
	struct ipath_ibdev *dev = FUNC12(ibdev);
	struct ipath_cq *cq;
	struct ipath_cq_wc *wc;
	struct ib_cq *ret;
	u32 sz;

	if (entries < 1 || entries > ib_ipath_max_cqes) {
		ret = FUNC0(-EINVAL);
		goto done;
	}

	/* Allocate the completion queue structure. */
	cq = FUNC4(sizeof(*cq), GFP_KERNEL);
	if (!cq) {
		ret = FUNC0(-ENOMEM);
		goto done;
	}

	/*
	 * Allocate the completion queue entries and head/tail pointers.
	 * This is allocated separately so that it can be resized and
	 * also mapped into user space.
	 * We need to use vmalloc() in order to support mmap and large
	 * numbers of entries.
	 */
	sz = sizeof(*wc);
	if (udata && udata->outlen >= sizeof(__u64))
		sz += sizeof(struct ib_uverbs_wc) * (entries + 1);
	else
		sz += sizeof(struct ib_wc) * (entries + 1);
	wc = FUNC14(sz);
	if (!wc) {
		ret = FUNC0(-ENOMEM);
		goto bail_cq;
	}

	/*
	 * Return the address of the WC as the offset to mmap.
	 * See ipath_mmap() for details.
	 */
	if (udata && udata->outlen >= sizeof(__u64)) {
		int err;

		cq->ip = FUNC2(dev, sz, context, wc);
		if (!cq->ip) {
			ret = FUNC0(-ENOMEM);
			goto bail_wc;
		}

		err = FUNC1(udata, &cq->ip->offset,
				       sizeof(cq->ip->offset));
		if (err) {
			ret = FUNC0(err);
			goto bail_ip;
		}
	} else
		cq->ip = NULL;

	FUNC6(&dev->n_cqs_lock);
	if (dev->n_cqs_allocated == ib_ipath_max_cqs) {
		FUNC9(&dev->n_cqs_lock);
		ret = FUNC0(-ENOMEM);
		goto bail_ip;
	}

	dev->n_cqs_allocated++;
	FUNC9(&dev->n_cqs_lock);

	if (cq->ip) {
		FUNC8(&dev->pending_lock);
		FUNC5(&cq->ip->pending_mmaps, &dev->pending_mmaps);
		FUNC10(&dev->pending_lock);
	}

	/*
	 * ib_create_cq() will initialize cq->ibcq except for cq->ibcq.cqe.
	 * The number of entries should be >= the number requested or return
	 * an error.
	 */
	cq->ibcq.cqe = entries;
	cq->notify = IB_CQ_NONE;
	cq->triggered = 0;
	FUNC7(&cq->lock);
	FUNC11(&cq->comptask, send_complete, (unsigned long)cq);
	wc->head = 0;
	wc->tail = 0;
	cq->queue = wc;

	ret = &cq->ibcq;

	goto done;

bail_ip:
	FUNC3(cq->ip);
bail_wc:
	FUNC13(wc);
bail_cq:
	FUNC3(cq);
done:
	return ret;
}