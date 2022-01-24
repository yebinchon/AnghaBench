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
struct r1conf {int raid_disks; int /*<<< orphan*/  r1buf_pool; TYPE_1__* mirrors; } ;
struct r1bio {TYPE_2__* mddev; struct bio** bios; } ;
struct bio {scalar_t__ bi_end_io; } ;
struct TYPE_4__ {struct r1conf* private; } ;
struct TYPE_3__ {int /*<<< orphan*/  rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct r1conf*) ; 
 int /*<<< orphan*/  FUNC1 (struct r1bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static void FUNC3(struct r1bio *r1_bio)
{
	struct r1conf *conf = r1_bio->mddev->private;
	int i;

	for (i = 0; i < conf->raid_disks * 2; i++) {
		struct bio *bio = r1_bio->bios[i];
		if (bio->bi_end_io)
			FUNC2(conf->mirrors[i].rdev, r1_bio->mddev);
	}

	FUNC1(r1_bio, conf->r1buf_pool);

	FUNC0(conf);
}