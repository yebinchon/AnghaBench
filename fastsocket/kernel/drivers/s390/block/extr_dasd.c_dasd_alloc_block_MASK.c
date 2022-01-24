#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {unsigned long data; int /*<<< orphan*/  function; } ;
struct dasd_block {TYPE_1__ profile; TYPE_2__ timer; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  ccw_queue; int /*<<< orphan*/  tasklet; int /*<<< orphan*/  tasklet_scheduled; int /*<<< orphan*/  request_queue_lock; int /*<<< orphan*/  open_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct dasd_block* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ dasd_block_tasklet ; 
 int /*<<< orphan*/  dasd_block_timeout ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 struct dasd_block* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void (*) (unsigned long),unsigned long) ; 

struct dasd_block *FUNC7(void)
{
	struct dasd_block *block;

	block = FUNC4(sizeof(*block), GFP_ATOMIC);
	if (!block)
		return FUNC0(-ENOMEM);
	/* open_count = 0 means device online but not in use */
	FUNC2(&block->open_count, -1);

	FUNC5(&block->request_queue_lock);
	FUNC2(&block->tasklet_scheduled, 0);
	FUNC6(&block->tasklet,
		     (void (*)(unsigned long)) dasd_block_tasklet,
		     (unsigned long) block);
	FUNC1(&block->ccw_queue);
	FUNC5(&block->queue_lock);
	FUNC3(&block->timer);
	block->timer.function = dasd_block_timeout;
	block->timer.data = (unsigned long) block;
	FUNC5(&block->profile.lock);

	return block;
}