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
struct mpconf {TYPE_1__* multipaths; } ;
struct mddev {int raid_disks; struct mpconf* private; } ;
struct md_rdev {int /*<<< orphan*/  bdev; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  Faulty ; 
 struct request_queue* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (struct mddev*,int) ; 
 struct md_rdev* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(void *data, int bits)
{
	struct mddev *mddev = data;
	struct mpconf *conf = mddev->private;
	int i, ret = 0;

	if (FUNC2(mddev, bits))
		return 1;

	FUNC4();
	for (i = 0; i < mddev->raid_disks ; i++) {
		struct md_rdev *rdev = FUNC3(conf->multipaths[i].rdev);
		if (rdev && !FUNC6(Faulty, &rdev->flags)) {
			struct request_queue *q = FUNC0(rdev->bdev);

			ret |= FUNC1(&q->backing_dev_info, bits);
			/* Just like multipath_map, we just check the
			 * first available device
			 */
			break;
		}
	}
	FUNC5();
	return ret;
}