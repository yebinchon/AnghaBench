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
struct TYPE_2__ {int ra_pages; char* name; int /*<<< orphan*/  capabilities; scalar_t__ state; struct request_queue* unplug_io_data; int /*<<< orphan*/  unplug_io_fn; } ;
struct request_queue {int /*<<< orphan*/  __queue_lock; int /*<<< orphan*/ * queue_lock; int /*<<< orphan*/ * orig_bar_rq; scalar_t__ ordcolor; scalar_t__ orderr; scalar_t__ ordseq; scalar_t__ next_ordered; scalar_t__ ordered; int /*<<< orphan*/  sysfs_lock; int /*<<< orphan*/  kobj; int /*<<< orphan*/  delay_work; int /*<<< orphan*/  unplug_work; int /*<<< orphan*/  flush_data_in_flight; int /*<<< orphan*/ * flush_queue; int /*<<< orphan*/  timeout_list; int /*<<< orphan*/  timeout; int /*<<< orphan*/  unplug_timer; TYPE_1__ backing_dev_info; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  BDI_CAP_MAP_COPY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int PAGE_CACHE_SIZE ; 
 int VM_MAX_READAHEAD ; 
 int __GFP_ZERO ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  blk_backing_dev_unplug ; 
 int /*<<< orphan*/  blk_delay_work ; 
 int /*<<< orphan*/  blk_queue_ktype ; 
 int /*<<< orphan*/  blk_requestq_cachep ; 
 int /*<<< orphan*/  blk_rq_timed_out_timer ; 
 scalar_t__ FUNC4 (struct request_queue*) ; 
 int /*<<< orphan*/  blk_unplug_work ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct request_queue* FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

struct request_queue *FUNC12(gfp_t gfp_mask, int node_id)
{
	struct request_queue *q;
	int err;

	q = FUNC6(blk_requestq_cachep,
				gfp_mask | __GFP_ZERO, node_id);
	if (!q)
		return NULL;

	q->backing_dev_info.unplug_io_fn = blk_backing_dev_unplug;
	q->backing_dev_info.unplug_io_data = q;
	q->backing_dev_info.ra_pages =
			(VM_MAX_READAHEAD * 1024) / PAGE_CACHE_SIZE;
	q->backing_dev_info.state = 0;
	q->backing_dev_info.capabilities = BDI_CAP_MAP_COPY;
	q->backing_dev_info.name = "block";

	err = FUNC3(&q->backing_dev_info);
	if (err) {
		FUNC7(blk_requestq_cachep, q);
		return NULL;
	}

	if (FUNC4(q)) {
		FUNC7(blk_requestq_cachep, q);
		return NULL;
	}

	FUNC5(&q->unplug_timer);
	FUNC10(&q->timeout, blk_rq_timed_out_timer, (unsigned long) q);
	FUNC1(&q->timeout_list);
	FUNC1(&q->flush_queue[0]);
	FUNC1(&q->flush_queue[1]);
	FUNC1(&q->flush_data_in_flight);
	FUNC2(&q->unplug_work, blk_unplug_work);
	FUNC0(&q->delay_work, blk_delay_work);

	FUNC8(&q->kobj, &blk_queue_ktype);

	FUNC9(&q->sysfs_lock);
	FUNC11(&q->__queue_lock);

	/* Initialize DEPRECATED barrier members */
	q->ordered = q->next_ordered = q->ordseq = 0;
	q->orderr = q->ordcolor = 0;
	q->orig_bar_rq = NULL;

	/*
	 * By default initialize queue_lock to internal lock and driver can
	 * override it later if need be.
	 */
	q->queue_lock = &q->__queue_lock;

	return q;
}