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
struct request_queue {int dummy; } ;
struct r5conf {TYPE_1__* disks; int /*<<< orphan*/  previous_raid_disks; int /*<<< orphan*/  raid_disks; } ;
struct mddev {struct r5conf* private; } ;
struct md_rdev {int /*<<< orphan*/  nr_pending; int /*<<< orphan*/  bdev; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  Faulty ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct request_queue* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct md_rdev* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct md_rdev*,struct mddev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct mddev *mddev)
{
	struct r5conf *conf = mddev->private;
	int i;
	int devs = FUNC4(conf->raid_disks, conf->previous_raid_disks);

	FUNC6();
	for (i = 0; i < devs; i++) {
		struct md_rdev *rdev = FUNC5(conf->disks[i].rdev);
		if (rdev && !FUNC9(Faulty, &rdev->flags) && FUNC1(&rdev->nr_pending)) {
			struct request_queue *r_queue = FUNC2(rdev->bdev);

			FUNC0(&rdev->nr_pending);
			FUNC7();

			FUNC3(r_queue);

			FUNC8(rdev, mddev);
			FUNC6();
		}
	}
	FUNC7();
}