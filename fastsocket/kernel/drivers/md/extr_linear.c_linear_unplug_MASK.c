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
struct request_queue {struct mddev* queuedata; } ;
struct mddev {int raid_disks; int /*<<< orphan*/  private; } ;
struct linear_conf {TYPE_2__* disks; } ;
struct TYPE_4__ {TYPE_1__* rdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 struct request_queue* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*) ; 
 struct linear_conf* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct request_queue *q)
{
	struct mddev *mddev = q->queuedata;
	struct linear_conf *conf;
	int i;

	FUNC3();
	conf = FUNC2(mddev->private);

	for (i=0; i < mddev->raid_disks; i++) {
		struct request_queue *r_queue = FUNC0(conf->disks[i].rdev->bdev);
		FUNC1(r_queue);
	}
	FUNC4();
}