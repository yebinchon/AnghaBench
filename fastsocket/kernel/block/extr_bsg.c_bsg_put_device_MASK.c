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
struct TYPE_2__ {int /*<<< orphan*/  ref; } ;
struct request_queue {TYPE_1__ bsg_dev; } ;
struct bsg_device {int /*<<< orphan*/  flags; int /*<<< orphan*/  name; int /*<<< orphan*/  dev_list; int /*<<< orphan*/  ref_count; struct request_queue* queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSG_F_BLOCK ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*) ; 
 int FUNC2 (struct bsg_device*) ; 
 int /*<<< orphan*/  bsg_kref_release_function ; 
 int /*<<< orphan*/  bsg_mutex ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct bsg_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct bsg_device *bd)
{
	int ret = 0, do_free;
	struct request_queue *q = bd->queue;

	FUNC7(&bsg_mutex);

	do_free = FUNC0(&bd->ref_count);
	if (!do_free) {
		FUNC8(&bsg_mutex);
		goto out;
	}

	FUNC4(&bd->dev_list);
	FUNC8(&bsg_mutex);

	FUNC3("%s: tearing down\n", bd->name);

	/*
	 * close can always block
	 */
	FUNC9(BSG_F_BLOCK, &bd->flags);

	/*
	 * correct error detection baddies here again. it's the responsibility
	 * of the app to properly reap commands before close() if it wants
	 * fool-proof error detection
	 */
	ret = FUNC2(bd);

	FUNC5(bd);
out:
	FUNC6(&q->bsg_dev.ref, bsg_kref_release_function);
	if (do_free)
		FUNC1(q);
	return ret;
}