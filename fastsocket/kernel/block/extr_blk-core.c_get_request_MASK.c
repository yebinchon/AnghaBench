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
struct request_list {int* count; int* starved; int /*<<< orphan*/  elvpriv; } ;
struct request_queue {int nr_requests; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  queue_flags; int /*<<< orphan*/  node; struct request_list rq; } ;
struct request {int dummy; } ;
struct io_context {int /*<<< orphan*/  nr_batch_requests; } ;
struct bio {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ELV_MQUEUE_MUST ; 
 int ELV_MQUEUE_NO ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  QUEUE_FLAG_ELVSWITCH ; 
 int REQ_ELVPRIV ; 
 int REQ_IO_STAT ; 
 struct request* FUNC0 (struct request_queue*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*,int const) ; 
 scalar_t__ FUNC3 (struct request_queue*) ; 
 scalar_t__ FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct request_queue*,int const) ; 
 int /*<<< orphan*/  FUNC6 (struct request_queue*,int const) ; 
 struct io_context* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct request_queue*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct request_queue*,int) ; 
 scalar_t__ FUNC10 (struct request_queue*,struct io_context*) ; 
 int /*<<< orphan*/  FUNC11 (struct request_queue*,struct io_context*) ; 
 int FUNC12 (struct request_queue*) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct request_queue*,struct bio*,int) ; 
 scalar_t__ FUNC18 (int) ; 

__attribute__((used)) static struct request *FUNC19(struct request_queue *q, int rw_flags,
				   struct bio *bio, gfp_t gfp_mask)
{
	struct request *rq = NULL;
	struct request_list *rl = &q->rq;
	struct io_context *ioc = NULL;
	const bool is_sync = FUNC13(rw_flags) != 0;
	int may_queue;

	if (FUNC18(FUNC1(q)))
		return NULL;

	may_queue = FUNC8(q, rw_flags);
	if (may_queue == ELV_MQUEUE_NO)
		goto rq_starved;

	if (rl->count[is_sync]+1 >= FUNC12(q)) {
		if (rl->count[is_sync]+1 >= q->nr_requests) {
			ioc = FUNC7(GFP_ATOMIC, q->node);
			/*
			 * The queue will fill after this allocation, so set
			 * it as full, and mark this process as "batching".
			 * This process will be allowed to complete a batch of
			 * requests, others will be blocked.
			 */
			if (!FUNC2(q, is_sync)) {
				FUNC11(q, ioc);
				FUNC6(q, is_sync);
			} else {
				if (may_queue != ELV_MQUEUE_MUST
						&& !FUNC10(q, ioc)) {
					/*
					 * The queue is full and the allocating
					 * process is not a "batcher", and not
					 * exempted by the IO scheduler
					 */
					goto out;
				}
			}
		}
		FUNC5(q, is_sync);
	}

	/*
	 * Only allow batching queuers to allocate up to 50% over the defined
	 * limit of requests, otherwise we could have thousands of requests
	 * allocated with any setting of ->nr_requests
	 */
	if (rl->count[is_sync] >= (3 * q->nr_requests / 2))
		goto out;

	rl->count[is_sync]++;
	rl->starved[is_sync] = 0;

	if (FUNC4(bio) &&
	    !FUNC16(QUEUE_FLAG_ELVSWITCH, &q->queue_flags)) {
		rw_flags |= REQ_ELVPRIV;
		rl->elvpriv++;
	}

	if (FUNC3(q))
		rw_flags |= REQ_IO_STAT;
	FUNC15(q->queue_lock);

	rq = FUNC0(q, rw_flags, gfp_mask);
	if (FUNC18(!rq)) {
		/*
		 * Allocation failed presumably due to memory. Undo anything
		 * we might have messed up.
		 *
		 * Allocating task should really be put onto the front of the
		 * wait queue, but this is pretty rare.
		 */
		FUNC14(q->queue_lock);
		FUNC9(q, rw_flags);

		/*
		 * in the very unlikely event that allocation failed and no
		 * requests for this direction was pending, mark us starved
		 * so that freeing of a request in the other direction will
		 * notice us. another possible fix would be to split the
		 * rq mempool into READ and WRITE
		 */
rq_starved:
		if (FUNC18(rl->count[is_sync] == 0))
			rl->starved[is_sync] = 1;

		goto out;
	}

	/*
	 * ioc may be NULL here, and ioc_batching will be false. That's
	 * OK, if the queue is under the request limit then requests need
	 * not count toward the nr_batch_requests limit. There will always
	 * be some limit enforced by BLK_BATCH_TIME.
	 */
	if (FUNC10(q, ioc))
		ioc->nr_batch_requests--;

	FUNC17(q, bio, rw_flags & 1);
out:
	return rq;
}