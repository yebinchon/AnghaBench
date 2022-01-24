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
struct blk_queue_tag {scalar_t__ max_depth; struct blk_queue_tag* tag_map; struct blk_queue_tag* tag_index; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct blk_queue_tag*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct blk_queue_tag*) ; 

__attribute__((used)) static int FUNC4(struct blk_queue_tag *bqt)
{
	int retval;

	retval = FUNC1(&bqt->refcnt);
	if (retval) {
		FUNC0(FUNC2(bqt->tag_map, bqt->max_depth) <
							bqt->max_depth);

		FUNC3(bqt->tag_index);
		bqt->tag_index = NULL;

		FUNC3(bqt->tag_map);
		bqt->tag_map = NULL;

		FUNC3(bqt);
	}

	return retval;
}