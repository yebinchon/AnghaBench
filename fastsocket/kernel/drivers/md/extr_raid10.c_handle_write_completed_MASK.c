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
struct r10conf {int copies; int /*<<< orphan*/  mddev; TYPE_1__* mirrors; } ;
struct r10bio {int /*<<< orphan*/  state; int /*<<< orphan*/  sectors; TYPE_2__* devs; } ;
struct md_rdev {int dummy; } ;
struct bio {int /*<<< orphan*/  bi_flags; } ;
struct TYPE_4__ {int devnum; int /*<<< orphan*/  addr; struct bio* repl_bio; struct bio* bio; } ;
struct TYPE_3__ {struct md_rdev* replacement; struct md_rdev* rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_UPTODATE ; 
 struct bio* IO_MADE_GOOD ; 
 int /*<<< orphan*/  R10BIO_Degraded ; 
 int /*<<< orphan*/  R10BIO_IsRecover ; 
 int /*<<< orphan*/  R10BIO_IsSync ; 
 int /*<<< orphan*/  R10BIO_WriteError ; 
 int /*<<< orphan*/  FUNC0 (struct r10bio*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC2 (struct r10bio*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct r10bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct r10bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct md_rdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct md_rdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct md_rdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct r10conf *conf, struct r10bio *r10_bio)
{
	/* Some sort of write request has finished and it
	 * succeeded in writing where we thought there was a
	 * bad block.  So forget the bad block.
	 * Or possibly if failed and we need to record
	 * a bad block.
	 */
	int m;
	struct md_rdev *rdev;

	if (FUNC9(R10BIO_IsSync, &r10_bio->state) ||
	    FUNC9(R10BIO_IsRecover, &r10_bio->state)) {
		for (m = 0; m < conf->copies; m++) {
			int dev = r10_bio->devs[m].devnum;
			rdev = conf->mirrors[dev].rdev;
			if (r10_bio->devs[m].bio == NULL)
				continue;
			if (FUNC9(BIO_UPTODATE,
				     &r10_bio->devs[m].bio->bi_flags)) {
				FUNC5(
					rdev,
					r10_bio->devs[m].addr,
					r10_bio->sectors, 0);
			} else {
				if (!FUNC7(
					    rdev,
					    r10_bio->devs[m].addr,
					    r10_bio->sectors, 0))
					FUNC1(conf->mddev, rdev);
			}
			rdev = conf->mirrors[dev].replacement;
			if (r10_bio->devs[m].repl_bio == NULL)
				continue;
			if (FUNC9(BIO_UPTODATE,
				     &r10_bio->devs[m].repl_bio->bi_flags)) {
				FUNC5(
					rdev,
					r10_bio->devs[m].addr,
					r10_bio->sectors, 0);
			} else {
				if (!FUNC7(
					    rdev,
					    r10_bio->devs[m].addr,
					    r10_bio->sectors, 0))
					FUNC1(conf->mddev, rdev);
			}
		}
		FUNC3(r10_bio);
	} else {
		for (m = 0; m < conf->copies; m++) {
			int dev = r10_bio->devs[m].devnum;
			struct bio *bio = r10_bio->devs[m].bio;
			rdev = conf->mirrors[dev].rdev;
			if (bio == IO_MADE_GOOD) {
				FUNC5(
					rdev,
					r10_bio->devs[m].addr,
					r10_bio->sectors, 0);
				FUNC6(rdev, conf->mddev);
			} else if (bio != NULL &&
				   !FUNC9(BIO_UPTODATE, &bio->bi_flags)) {
				if (!FUNC2(r10_bio, m)) {
					FUNC1(conf->mddev, rdev);
					FUNC8(R10BIO_Degraded,
						&r10_bio->state);
				}
				FUNC6(rdev, conf->mddev);
			}
			bio = r10_bio->devs[m].repl_bio;
			rdev = conf->mirrors[dev].replacement;
			if (rdev && bio == IO_MADE_GOOD) {
				FUNC5(
					rdev,
					r10_bio->devs[m].addr,
					r10_bio->sectors, 0);
				FUNC6(rdev, conf->mddev);
			}
		}
		if (FUNC9(R10BIO_WriteError,
			     &r10_bio->state))
			FUNC0(r10_bio);
		FUNC4(r10_bio);
	}
}