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
struct mddev {struct linear_conf* private; TYPE_2__* queue; int /*<<< orphan*/  raid_disks; } ;
struct linear_conf {int dummy; } ;
struct TYPE_3__ {struct mddev* congested_data; int /*<<< orphan*/  congested_fn; } ;
struct TYPE_4__ {TYPE_1__ backing_dev_info; int /*<<< orphan*/  unplug_fn; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct linear_conf*) ; 
 struct linear_conf* FUNC2 (struct mddev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  linear_congested ; 
 int /*<<< orphan*/  linear_mergeable_bvec ; 
 int /*<<< orphan*/  FUNC3 (struct mddev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  linear_unplug ; 
 scalar_t__ FUNC4 (struct mddev*) ; 
 int FUNC5 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mddev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7 (struct mddev *mddev)
{
	struct linear_conf *conf;
	int ret;

	if (FUNC4(mddev))
		return -EINVAL;
	conf = FUNC2(mddev, mddev->raid_disks);

	if (!conf)
		return 1;
	mddev->private = conf;
	FUNC6(mddev, FUNC3(mddev, 0, 0));

	FUNC0(mddev->queue, linear_mergeable_bvec);
	mddev->queue->unplug_fn = linear_unplug;
	mddev->queue->backing_dev_info.congested_fn = linear_congested;
	mddev->queue->backing_dev_info.congested_data = mddev;

	ret =  FUNC5(mddev);
	if (ret) {
		FUNC1(conf);
		mddev->private = NULL;
	}
	return ret;
}