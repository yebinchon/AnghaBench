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
struct request_queue {int dummy; } ;
struct blk_queue_tag {int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (struct request_queue*,struct blk_queue_tag*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct blk_queue_tag*) ; 
 struct blk_queue_tag* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct blk_queue_tag *FUNC4(struct request_queue *q,
						   int depth)
{
	struct blk_queue_tag *tags;

	tags = FUNC3(sizeof(struct blk_queue_tag), GFP_ATOMIC);
	if (!tags)
		goto fail;

	if (FUNC1(q, tags, depth))
		goto fail;

	FUNC0(&tags->refcnt, 1);
	return tags;
fail:
	FUNC2(tags);
	return NULL;
}