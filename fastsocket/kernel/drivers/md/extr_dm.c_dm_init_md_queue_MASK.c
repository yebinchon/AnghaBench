#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct mapped_device {TYPE_2__* queue; } ;
struct TYPE_6__ {struct mapped_device* congested_data; int /*<<< orphan*/  congested_fn; } ;
struct TYPE_7__ {int /*<<< orphan*/  unplug_fn; TYPE_1__ backing_dev_info; struct mapped_device* queuedata; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_BOUNCE_ANY ; 
 int /*<<< orphan*/  QUEUE_FLAG_STACKABLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dm_any_congested ; 
 int /*<<< orphan*/  dm_merge_bvec ; 
 int /*<<< orphan*/  dm_request ; 
 int /*<<< orphan*/  dm_unplug_all ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static void FUNC4(struct mapped_device *md)
{
	/*
	 * Request-based dm devices cannot be stacked on top of bio-based dm
	 * devices.  The type of this dm device has not been decided yet.
	 * The type is decided at the first table loading time.
	 * To prevent problematic device stacking, clear the queue flag
	 * for request stacking support until then.
	 *
	 * This queue is new, so no concurrency on the queue_flags.
	 */
	FUNC3(QUEUE_FLAG_STACKABLE, md->queue);

	md->queue->queuedata = md;
	md->queue->backing_dev_info.congested_fn = dm_any_congested;
	md->queue->backing_dev_info.congested_data = md;
	FUNC1(md->queue, dm_request);
	FUNC0(md->queue, BLK_BOUNCE_ANY);
	md->queue->unplug_fn = dm_unplug_all;
	FUNC2(md->queue, dm_merge_bvec);
}