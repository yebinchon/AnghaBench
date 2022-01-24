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
struct r1conf {int raid_disks; int /*<<< orphan*/  mddev; TYPE_1__* mirrors; } ;
struct r1bio {int sectors; int /*<<< orphan*/  sector; int /*<<< orphan*/  state; struct bio** bios; } ;
struct md_rdev {int dummy; } ;
struct bio {int /*<<< orphan*/  bi_flags; int /*<<< orphan*/ * bi_end_io; } ;
struct TYPE_2__ {struct md_rdev* rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_UPTODATE ; 
 int /*<<< orphan*/  R1BIO_MadeGood ; 
 int /*<<< orphan*/  R1BIO_WriteError ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC2 (struct r1bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct md_rdev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct md_rdev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct r1conf *conf, struct r1bio *r1_bio)
{
	int m;
	int s = r1_bio->sectors;
	for (m = 0; m < conf->raid_disks * 2 ; m++) {
		struct md_rdev *rdev = conf->mirrors[m].rdev;
		struct bio *bio = r1_bio->bios[m];
		if (bio->bi_end_io == NULL)
			continue;
		if (FUNC5(BIO_UPTODATE, &bio->bi_flags) &&
		    FUNC5(R1BIO_MadeGood, &r1_bio->state)) {
			FUNC3(rdev, r1_bio->sector, s, 0);
		}
		if (!FUNC5(BIO_UPTODATE, &bio->bi_flags) &&
		    FUNC5(R1BIO_WriteError, &r1_bio->state)) {
			if (!FUNC4(rdev, r1_bio->sector, s, 0))
				FUNC1(conf->mddev, rdev);
		}
	}
	FUNC2(r1_bio);
	FUNC0(conf->mddev, s, 1);
}