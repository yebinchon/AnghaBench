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
struct r5conf {int /*<<< orphan*/  plug; } ;
struct mddev {int /*<<< orphan*/ * to_remove; int /*<<< orphan*/ * plug; struct r5conf* private; TYPE_2__* queue; int /*<<< orphan*/  thread; } ;
struct TYPE_3__ {int /*<<< orphan*/ * congested_fn; } ;
struct TYPE_4__ {TYPE_1__ backing_dev_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct r5conf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  raid5_attrs_group ; 

__attribute__((used)) static int FUNC3(struct mddev *mddev)
{
	struct r5conf *conf = mddev->private;

	FUNC1(&mddev->thread);
	if (mddev->queue)
		mddev->queue->backing_dev_info.congested_fn = NULL;
	FUNC2(&conf->plug); /* the unplug fn references 'conf'*/
	FUNC0(conf);
	mddev->private = NULL;
	mddev->plug = NULL;
	mddev->to_remove = &raid5_attrs_group;
	return 0;
}