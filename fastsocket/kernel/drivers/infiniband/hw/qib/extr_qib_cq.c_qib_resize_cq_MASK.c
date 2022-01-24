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
typedef  int u32 ;
struct qib_mmap_info {int /*<<< orphan*/  pending_mmaps; int /*<<< orphan*/  offset; } ;
struct qib_ibdev {int /*<<< orphan*/  pending_lock; int /*<<< orphan*/  pending_mmaps; } ;
struct qib_cq_wc {int head; int tail; int /*<<< orphan*/ * kqueue; int /*<<< orphan*/ * uqueue; } ;
struct TYPE_2__ {int cqe; } ;
struct qib_cq {int /*<<< orphan*/  lock; struct qib_mmap_info* ip; struct qib_cq_wc* queue; TYPE_1__ ibcq; } ;
struct ib_wc {int dummy; } ;
struct ib_uverbs_wc {int dummy; } ;
struct ib_udata {int outlen; } ;
struct ib_cq {int /*<<< orphan*/  device; } ;
typedef  int /*<<< orphan*/  offset ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int FUNC0 (struct ib_udata*,int /*<<< orphan*/ *,int) ; 
 int ib_qib_max_cqes ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct qib_ibdev*,struct qib_mmap_info*,int,struct qib_cq_wc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct qib_cq* FUNC6 (struct ib_cq*) ; 
 struct qib_ibdev* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct qib_cq_wc*) ; 
 struct qib_cq_wc* FUNC10 (int) ; 

int FUNC11(struct ib_cq *ibcq, int cqe, struct ib_udata *udata)
{
	struct qib_cq *cq = FUNC6(ibcq);
	struct qib_cq_wc *old_wc;
	struct qib_cq_wc *wc;
	u32 head, tail, n;
	int ret;
	u32 sz;

	if (cqe < 1 || cqe > ib_qib_max_cqes) {
		ret = -EINVAL;
		goto bail;
	}

	/*
	 * Need to use vmalloc() if we want to support large #s of entries.
	 */
	sz = sizeof(*wc);
	if (udata && udata->outlen >= sizeof(__u64))
		sz += sizeof(struct ib_uverbs_wc) * (cqe + 1);
	else
		sz += sizeof(struct ib_wc) * (cqe + 1);
	wc = FUNC10(sz);
	if (!wc) {
		ret = -ENOMEM;
		goto bail;
	}

	/* Check that we can write the offset to mmap. */
	if (udata && udata->outlen >= sizeof(__u64)) {
		__u64 offset = 0;

		ret = FUNC0(udata, &offset, sizeof(offset));
		if (ret)
			goto bail_free;
	}

	FUNC4(&cq->lock);
	/*
	 * Make sure head and tail are sane since they
	 * might be user writable.
	 */
	old_wc = cq->queue;
	head = old_wc->head;
	if (head > (u32) cq->ibcq.cqe)
		head = (u32) cq->ibcq.cqe;
	tail = old_wc->tail;
	if (tail > (u32) cq->ibcq.cqe)
		tail = (u32) cq->ibcq.cqe;
	if (head < tail)
		n = cq->ibcq.cqe + 1 + head - tail;
	else
		n = head - tail;
	if (FUNC8((u32)cqe < n)) {
		ret = -EINVAL;
		goto bail_unlock;
	}
	for (n = 0; tail != head; n++) {
		if (cq->ip)
			wc->uqueue[n] = old_wc->uqueue[tail];
		else
			wc->kqueue[n] = old_wc->kqueue[tail];
		if (tail == (u32) cq->ibcq.cqe)
			tail = 0;
		else
			tail++;
	}
	cq->ibcq.cqe = cqe;
	wc->head = n;
	wc->tail = 0;
	cq->queue = wc;
	FUNC5(&cq->lock);

	FUNC9(old_wc);

	if (cq->ip) {
		struct qib_ibdev *dev = FUNC7(ibcq->device);
		struct qib_mmap_info *ip = cq->ip;

		FUNC3(dev, ip, sz, wc);

		/*
		 * Return the offset to mmap.
		 * See qib_mmap() for details.
		 */
		if (udata && udata->outlen >= sizeof(__u64)) {
			ret = FUNC0(udata, &ip->offset,
					       sizeof(ip->offset));
			if (ret)
				goto bail;
		}

		FUNC4(&dev->pending_lock);
		if (FUNC2(&ip->pending_mmaps))
			FUNC1(&ip->pending_mmaps, &dev->pending_mmaps);
		FUNC5(&dev->pending_lock);
	}

	ret = 0;
	goto bail;

bail_unlock:
	FUNC5(&cq->lock);
bail_free:
	FUNC9(wc);
bail:
	return ret;
}