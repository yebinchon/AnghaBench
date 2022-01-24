#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct r5conf {int /*<<< orphan*/  wait_for_stripe; int /*<<< orphan*/  active_aligned_reads; int /*<<< orphan*/  mddev; } ;
struct mddev {struct r5conf* private; } ;
struct md_rdev {struct mddev* mddev; } ;
struct bio {int /*<<< orphan*/  bi_bdev; int /*<<< orphan*/ * bi_next; int /*<<< orphan*/  bi_flags; struct bio* bi_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_UPTODATE ; 
 int /*<<< orphan*/  FUNC0 (struct bio*,struct r5conf*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct md_rdev*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct bio*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct bio *bi, int error)
{
	struct bio* raid_bi  = bi->bi_private;
	struct mddev *mddev;
	struct r5conf *conf;
	int uptodate = FUNC7(BIO_UPTODATE, &bi->bi_flags);
	struct md_rdev *rdev;

	FUNC4(bi);

	rdev = (void*)raid_bi->bi_next;
	raid_bi->bi_next = NULL;
	mddev = rdev->mddev;
	conf = mddev->private;

	FUNC6(rdev, conf->mddev);

	if (!error && uptodate) {
		FUNC8(FUNC2(raid_bi->bi_bdev),
					 raid_bi);
		FUNC3(raid_bi, 0);
		if (FUNC1(&conf->active_aligned_reads))
			FUNC9(&conf->wait_for_stripe);
		return;
	}


	FUNC5("raid5_align_endio : io error...handing IO for a retry\n");

	FUNC0(raid_bi, conf);
}