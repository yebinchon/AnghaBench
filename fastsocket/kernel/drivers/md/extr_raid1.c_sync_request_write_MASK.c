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
struct r1conf {int raid_disks; TYPE_2__* mirrors; } ;
struct r1bio {size_t read_disk; int sectors; int /*<<< orphan*/  state; int /*<<< orphan*/  remaining; struct bio** bios; } ;
struct mddev {int /*<<< orphan*/  recovery; struct r1conf* private; } ;
struct bio {int /*<<< orphan*/ * bi_end_io; int /*<<< orphan*/  bi_rw; } ;
struct TYPE_4__ {TYPE_1__* rdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MD_RECOVERY_REQUESTED ; 
 int /*<<< orphan*/  MD_RECOVERY_SYNC ; 
 int /*<<< orphan*/  R1BIO_MadeGood ; 
 int /*<<< orphan*/  R1BIO_Uptodate ; 
 int /*<<< orphan*/  R1BIO_WriteError ; 
 int /*<<< orphan*/  WRITE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 int /*<<< orphan*/ * end_sync_read ; 
 int /*<<< orphan*/ * end_sync_write ; 
 int /*<<< orphan*/  FUNC4 (struct r1bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (struct mddev*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct r1bio*) ; 
 int /*<<< orphan*/  FUNC9 (struct r1bio*) ; 
 int /*<<< orphan*/  FUNC10 (struct r1bio*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct mddev *mddev, struct r1bio *r1_bio)
{
	struct r1conf *conf = mddev->private;
	int i;
	int disks = conf->raid_disks * 2;
	struct bio *bio, *wbio;

	bio = r1_bio->bios[r1_bio->read_disk];

	if (!FUNC11(R1BIO_Uptodate, &r1_bio->state))
		/* ouch - failed to read all of that. */
		if (!FUNC4(r1_bio))
			return;

	if (FUNC11(MD_RECOVERY_REQUESTED, &mddev->recovery))
		if (FUNC8(r1_bio) < 0)
			return;
	/*
	 * schedule writes
	 */
	FUNC2(&r1_bio->remaining, 1);
	for (i = 0; i < disks ; i++) {
		wbio = r1_bio->bios[i];
		if (wbio->bi_end_io == NULL ||
		    (wbio->bi_end_io == end_sync_read &&
		     (i == r1_bio->read_disk ||
		      !FUNC11(MD_RECOVERY_SYNC, &mddev->recovery))))
			continue;

		wbio->bi_rw = WRITE;
		wbio->bi_end_io = end_sync_write;
		FUNC1(&r1_bio->remaining);
		FUNC7(conf->mirrors[i].rdev->bdev, FUNC3(wbio));

		FUNC5(wbio);
	}

	if (FUNC0(&r1_bio->remaining)) {
		/* if we're here, all write(s) have completed, so clean up */
		int s = r1_bio->sectors;
		if (FUNC11(R1BIO_MadeGood, &r1_bio->state) ||
		    FUNC11(R1BIO_WriteError, &r1_bio->state))
			FUNC10(r1_bio);
		else {
			FUNC9(r1_bio);
			FUNC6(mddev, s, 1);
		}
	}
}