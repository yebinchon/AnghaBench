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
struct request_queue {struct mddev* queuedata; } ;
struct r0conf {TYPE_1__* strip_zone; struct md_rdev** devlist; } ;
struct mddev {struct r0conf* private; } ;
struct md_rdev {int /*<<< orphan*/  bdev; } ;
struct TYPE_2__ {int nb_dev; } ;

/* Variables and functions */
 struct request_queue* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*) ; 

__attribute__((used)) static void FUNC2(struct request_queue *q)
{
	struct mddev *mddev = q->queuedata;
	struct r0conf *conf = mddev->private;
	struct md_rdev **devlist = conf->devlist;
	int raid_disks = conf->strip_zone[0].nb_dev;
	int i;

	for (i=0; i < raid_disks; i++) {
		struct request_queue *r_queue = FUNC0(devlist[i]->bdev);

		FUNC1(r_queue);
	}
}