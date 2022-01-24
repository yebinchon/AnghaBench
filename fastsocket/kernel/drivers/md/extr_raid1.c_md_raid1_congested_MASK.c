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
struct request_queue {int /*<<< orphan*/  backing_dev_info; } ;
struct r1conf {scalar_t__ pending_count; int raid_disks; TYPE_1__* mirrors; } ;
struct mddev {struct r1conf* private; } ;
struct md_rdev {int /*<<< orphan*/  bdev; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  rdev; } ;

/* Variables and functions */
 int BDI_async_congested ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  Faulty ; 
 struct request_queue* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ max_queued_requests ; 
 struct md_rdev* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC7(struct mddev *mddev, int bits)
{
	struct r1conf *conf = mddev->private;
	int i, ret = 0;

	if ((bits & (1 << BDI_async_congested)) &&
	    conf->pending_count >= max_queued_requests)
		return 1;

	FUNC4();
	for (i = 0; i < conf->raid_disks * 2; i++) {
		struct md_rdev *rdev = FUNC3(conf->mirrors[i].rdev);
		if (rdev && !FUNC6(Faulty, &rdev->flags)) {
			struct request_queue *q = FUNC1(rdev->bdev);

			FUNC0(!q);

			/* Note the '|| 1' - when read_balance prefers
			 * non-congested targets, it can be removed
			 */
			if ((bits & (1<<BDI_async_congested)) || 1)
				ret |= FUNC2(&q->backing_dev_info, bits);
			else
				ret &= FUNC2(&q->backing_dev_info, bits);
		}
	}
	FUNC5();
	return ret;
}