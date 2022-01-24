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
struct request_queue {int /*<<< orphan*/  backing_dev_info; } ;
struct mddev {int raid_disks; int /*<<< orphan*/  private; } ;
struct linear_conf {TYPE_2__* disks; } ;
struct TYPE_4__ {TYPE_1__* rdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 struct request_queue* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (struct mddev*,int) ; 
 struct linear_conf* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(void *data, int bits)
{
	struct mddev *mddev = data;
	struct linear_conf *conf;
	int i, ret = 0;

	if (FUNC2(mddev, bits))
		return 1;

	FUNC4();
	conf = FUNC3(mddev->private);

	for (i = 0; i < mddev->raid_disks && !ret ; i++) {
		struct request_queue *q = FUNC0(conf->disks[i].rdev->bdev);
		ret |= FUNC1(&q->backing_dev_info, bits);
	}

	FUNC5();
	return ret;
}