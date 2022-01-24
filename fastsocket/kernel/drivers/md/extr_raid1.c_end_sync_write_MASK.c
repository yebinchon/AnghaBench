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
struct r1conf {TYPE_1__* mirrors; } ;
struct r1bio {long sectors; size_t read_disk; int /*<<< orphan*/  state; int /*<<< orphan*/  remaining; scalar_t__ sector; struct mddev* mddev; } ;
struct mddev {int /*<<< orphan*/  recovery; int /*<<< orphan*/  bitmap; struct r1conf* private; } ;
struct bio {struct r1bio* bi_private; int /*<<< orphan*/  bi_flags; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {TYPE_2__* rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_UPTODATE ; 
 int /*<<< orphan*/  MD_RECOVERY_NEEDED ; 
 int /*<<< orphan*/  R1BIO_MadeGood ; 
 int /*<<< orphan*/  R1BIO_WriteError ; 
 int /*<<< orphan*/  WantReplacement ; 
 int /*<<< orphan*/  WriteErrorSeen ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*,int) ; 
 int FUNC2 (struct r1bio*,struct bio*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,scalar_t__,long,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct mddev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct r1bio*) ; 
 int /*<<< orphan*/  FUNC6 (struct r1bio*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct bio *bio, int error)
{
	int uptodate = FUNC9(BIO_UPTODATE, &bio->bi_flags);
	struct r1bio *r1_bio = bio->bi_private;
	struct mddev *mddev = r1_bio->mddev;
	struct r1conf *conf = mddev->private;
	int mirror=0;
	sector_t first_bad;
	int bad_sectors;

	mirror = FUNC2(r1_bio, bio);

	if (!uptodate) {
		sector_t sync_blocks = 0;
		sector_t s = r1_bio->sector;
		long sectors_to_go = r1_bio->sectors;
		/* make sure these bits doesn't get cleared. */
		do {
			FUNC1(mddev->bitmap, s,
					&sync_blocks, 1);
			s += sync_blocks;
			sectors_to_go -= sync_blocks;
		} while (sectors_to_go > 0);
		FUNC7(WriteErrorSeen,
			&conf->mirrors[mirror].rdev->flags);
		if (!FUNC8(WantReplacement,
				      &conf->mirrors[mirror].rdev->flags))
			FUNC7(MD_RECOVERY_NEEDED, &
				mddev->recovery);
		FUNC7(R1BIO_WriteError, &r1_bio->state);
	} else if (FUNC3(conf->mirrors[mirror].rdev,
			       r1_bio->sector,
			       r1_bio->sectors,
			       &first_bad, &bad_sectors) &&
		   !FUNC3(conf->mirrors[r1_bio->read_disk].rdev,
				r1_bio->sector,
				r1_bio->sectors,
				&first_bad, &bad_sectors)
		)
		FUNC7(R1BIO_MadeGood, &r1_bio->state);

	if (FUNC0(&r1_bio->remaining)) {
		int s = r1_bio->sectors;
		if (FUNC9(R1BIO_MadeGood, &r1_bio->state) ||
		    FUNC9(R1BIO_WriteError, &r1_bio->state))
			FUNC6(r1_bio);
		else {
			FUNC5(r1_bio);
			FUNC4(mddev, s, uptodate);
		}
	}
}