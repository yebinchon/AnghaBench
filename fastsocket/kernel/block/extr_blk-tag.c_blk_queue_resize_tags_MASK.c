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
struct request_queue {struct blk_queue_tag* queue_tags; } ;
struct request {int dummy; } ;
struct blk_queue_tag {int real_max_depth; int max_depth; unsigned long* tag_map; struct request** tag_index; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int BITS_PER_LONG ; 
 int EBUSY ; 
 int ENOMEM ; 
 int ENXIO ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct request_queue*,struct blk_queue_tag*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long*,unsigned long*,int) ; 

int FUNC5(struct request_queue *q, int new_depth)
{
	struct blk_queue_tag *bqt = q->queue_tags;
	struct request **tag_index;
	unsigned long *tag_map;
	int max_depth, nr_ulongs;

	if (!bqt)
		return -ENXIO;

	/*
	 * if we already have large enough real_max_depth.  just
	 * adjust max_depth.  *NOTE* as requests with tag value
	 * between new_depth and real_max_depth can be in-flight, tag
	 * map can not be shrunk blindly here.
	 */
	if (new_depth <= bqt->real_max_depth) {
		bqt->max_depth = new_depth;
		return 0;
	}

	/*
	 * Currently cannot replace a shared tag map with a new
	 * one, so error out if this is the case
	 */
	if (FUNC1(&bqt->refcnt) != 1)
		return -EBUSY;

	/*
	 * save the old state info, so we can copy it back
	 */
	tag_index = bqt->tag_index;
	tag_map = bqt->tag_map;
	max_depth = bqt->real_max_depth;

	if (FUNC2(q, bqt, new_depth))
		return -ENOMEM;

	FUNC4(bqt->tag_index, tag_index, max_depth * sizeof(struct request *));
	nr_ulongs = FUNC0(max_depth, BITS_PER_LONG) / BITS_PER_LONG;
	FUNC4(bqt->tag_map, tag_map, nr_ulongs * sizeof(unsigned long));

	FUNC3(tag_index);
	FUNC3(tag_map);
	return 0;
}