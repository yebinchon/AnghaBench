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
struct request_queue {int dummy; } ;
struct mddev {int raid_disks; TYPE_2__* private; } ;
struct md_rdev {int /*<<< orphan*/  nr_pending; int /*<<< orphan*/  bdev; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {TYPE_1__* multipaths; } ;
typedef  TYPE_2__ multipath_conf_t ;
struct TYPE_3__ {int /*<<< orphan*/  rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  Faulty ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct request_queue* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*) ; 
 struct md_rdev* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct md_rdev*,struct mddev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct mddev *mddev)
{
	multipath_conf_t *conf = mddev->private;
	int i;

	FUNC5();
	for (i=0; i<mddev->raid_disks; i++) {
		struct md_rdev *rdev = FUNC4(conf->multipaths[i].rdev);
		if (rdev && !FUNC8(Faulty, &rdev->flags)
		    && FUNC1(&rdev->nr_pending)) {
			struct request_queue *r_queue = FUNC2(rdev->bdev);

			FUNC0(&rdev->nr_pending);
			FUNC6();

			FUNC3(r_queue);

			FUNC7(rdev, mddev);
			FUNC5();
		}
	}
	FUNC6();
}