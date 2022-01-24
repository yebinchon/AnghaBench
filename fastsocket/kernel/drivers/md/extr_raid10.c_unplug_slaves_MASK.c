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
struct TYPE_4__ {int raid_disks; } ;
struct r10conf {TYPE_1__* mirrors; TYPE_2__ geo; } ;
struct mddev {struct r10conf* private; } ;
struct md_rdev {int /*<<< orphan*/  nr_pending; int /*<<< orphan*/  bdev; int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  Faulty ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct request_queue* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct md_rdev* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct md_rdev*,struct mddev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct mddev *mddev)
{
	struct r10conf *conf = mddev->private;
	int i;

	FUNC6();
	for (i=0; i < conf->geo.raid_disks; i++) {
		struct md_rdev *rdev = FUNC5(conf->mirrors[i].rdev);
		if (rdev && !FUNC9(Faulty, &rdev->flags) && FUNC1(&rdev->nr_pending)) {
			struct request_queue *r_queue = FUNC2(rdev->bdev);

			if (!r_queue) {
				FUNC4("FIXME: No queue on device\n");
				continue;
			}
			FUNC0(&rdev->nr_pending);
			FUNC7();

			FUNC3(r_queue);

			FUNC8(rdev, mddev);
			FUNC6();
		}
	}
	FUNC7();
}