#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct r1conf {TYPE_4__* mddev; TYPE_2__* mirrors; } ;
struct r1bio {int /*<<< orphan*/ ** bios; struct bio* master_bio; int /*<<< orphan*/  state; int /*<<< orphan*/  remaining; int /*<<< orphan*/  behind_remaining; int /*<<< orphan*/  sectors; int /*<<< orphan*/  sector; TYPE_1__* mddev; } ;
struct bio {scalar_t__ bi_sector; struct r1bio* bi_private; int /*<<< orphan*/  bi_flags; } ;
typedef  int /*<<< orphan*/  sector_t ;
struct TYPE_9__ {int /*<<< orphan*/  recovery; } ;
struct TYPE_8__ {int /*<<< orphan*/  flags; } ;
struct TYPE_7__ {TYPE_3__* rdev; } ;
struct TYPE_6__ {struct r1conf* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_UPTODATE ; 
 int /*<<< orphan*/  Faulty ; 
 int /*<<< orphan*/ * IO_MADE_GOOD ; 
 int /*<<< orphan*/  In_sync ; 
 int /*<<< orphan*/  MD_RECOVERY_NEEDED ; 
 int /*<<< orphan*/  R1BIO_BehindIO ; 
 int /*<<< orphan*/  R1BIO_MadeGood ; 
 int /*<<< orphan*/  R1BIO_Returned ; 
 int /*<<< orphan*/  R1BIO_Uptodate ; 
 int /*<<< orphan*/  R1BIO_WriteError ; 
 int /*<<< orphan*/  WantReplacement ; 
 int /*<<< orphan*/  WriteErrorSeen ; 
 int /*<<< orphan*/  WriteMostly ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 scalar_t__ FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct r1bio*) ; 
 int FUNC5 (struct r1bio*,struct bio*) ; 
 scalar_t__ FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned long long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct r1bio*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct bio *bio, int error)
{
	int uptodate = FUNC12(BIO_UPTODATE, &bio->bi_flags);
	struct r1bio *r1_bio = bio->bi_private;
	int mirror, behind = FUNC12(R1BIO_BehindIO, &r1_bio->state);
	struct r1conf *conf = r1_bio->mddev->private;
	struct bio *to_put = NULL;

	mirror = FUNC5(r1_bio, bio);

	/*
	 * 'one mirror IO has finished' event handler:
	 */
	if (!uptodate) {
		FUNC10(WriteErrorSeen,
			&conf->mirrors[mirror].rdev->flags);
		if (!FUNC11(WantReplacement,
				      &conf->mirrors[mirror].rdev->flags))
			FUNC10(MD_RECOVERY_NEEDED, &
				conf->mddev->recovery);

		FUNC10(R1BIO_WriteError, &r1_bio->state);
	} else {
		/*
		 * Set R1BIO_Uptodate in our master bio, so that we
		 * will return a good error code for to the higher
		 * levels even if IO on some other mirrored buffer
		 * fails.
		 *
		 * The 'master' represents the composite IO operation
		 * to user-side. So if something waits for IO, then it
		 * will wait for the 'master' bio.
		 */
		sector_t first_bad;
		int bad_sectors;

		r1_bio->bios[mirror] = NULL;
		to_put = bio;
		/*
		 * Do not set R1BIO_Uptodate if the current device is
		 * rebuilding or Faulty. This is because we cannot use
		 * such device for properly reading the data back (we could
		 * potentially use it, if the current write would have felt
		 * before rdev->recovery_offset, but for simplicity we don't
		 * check this here.
		 */
		if (FUNC12(In_sync, &conf->mirrors[mirror].rdev->flags) &&
		    !FUNC12(Faulty, &conf->mirrors[mirror].rdev->flags))
			FUNC10(R1BIO_Uptodate, &r1_bio->state);

		/* Maybe we can clear some bad blocks. */
		if (FUNC6(conf->mirrors[mirror].rdev,
				r1_bio->sector, r1_bio->sectors,
				&first_bad, &bad_sectors)) {
			r1_bio->bios[mirror] = IO_MADE_GOOD;
			FUNC10(R1BIO_MadeGood, &r1_bio->state);
		}
	}

	if (behind) {
		if (FUNC12(WriteMostly, &conf->mirrors[mirror].rdev->flags))
			FUNC0(&r1_bio->behind_remaining);

		/*
		 * In behind mode, we ACK the master bio once the I/O
		 * has safely reached all non-writemostly
		 * disks. Setting the Returned bit ensures that this
		 * gets done only once -- we don't ever want to return
		 * -EIO here, instead we'll wait
		 */
		if (FUNC1(&r1_bio->behind_remaining) >= (FUNC1(&r1_bio->remaining)-1) &&
		    FUNC12(R1BIO_Uptodate, &r1_bio->state)) {
			/* Maybe we can return now */
			if (!FUNC11(R1BIO_Returned, &r1_bio->state)) {
				struct bio *mbio = r1_bio->master_bio;
				FUNC7("raid1: behind end write sectors"
					 " %llu-%llu\n",
					 (unsigned long long) mbio->bi_sector,
					 (unsigned long long) mbio->bi_sector +
					 FUNC3(mbio) - 1);
				FUNC4(r1_bio);
			}
		}
	}
	if (r1_bio->bios[mirror] == NULL)
		FUNC9(conf->mirrors[mirror].rdev,
				 conf->mddev);

	/*
	 * Let's see if all mirrored write operations have finished
	 * already.
	 */
	FUNC8(r1_bio);

	if (to_put)
		FUNC2(to_put);
}