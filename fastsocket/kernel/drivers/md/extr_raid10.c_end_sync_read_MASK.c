#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct r10conf {int /*<<< orphan*/  mddev; TYPE_2__* mirrors; } ;
struct r10bio {int read_slot; int /*<<< orphan*/  remaining; int /*<<< orphan*/  state; int /*<<< orphan*/  sectors; struct bio* master_bio; TYPE_1__* mddev; } ;
struct bio {int /*<<< orphan*/  bi_flags; struct r10bio* bi_private; } ;
struct TYPE_6__ {int /*<<< orphan*/  corrected_errors; } ;
struct TYPE_5__ {TYPE_3__* rdev; } ;
struct TYPE_4__ {struct r10conf* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_UPTODATE ; 
 int /*<<< orphan*/  R10BIO_IsRecover ; 
 int /*<<< orphan*/  R10BIO_Uptodate ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct r10conf*,struct r10bio*,struct bio*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct r10bio*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct bio *bio, int error)
{
	struct r10bio *r10_bio = bio->bi_private;
	struct r10conf *conf = r10_bio->mddev->private;
	int d;

	if (bio == r10_bio->master_bio) {
		/* this is a reshape read */
		d = r10_bio->read_slot; /* really the read dev */
	} else
		d = FUNC2(conf, r10_bio, bio, NULL, NULL);

	if (FUNC6(BIO_UPTODATE, &bio->bi_flags))
		FUNC5(R10BIO_Uptodate, &r10_bio->state);
	else
		/* The write handler will notice the lack of
		 * R10BIO_Uptodate and record any errors etc
		 */
		FUNC0(r10_bio->sectors,
			   &conf->mirrors[d].rdev->corrected_errors);

	/* for reconstruct, we always reschedule after a read.
	 * for resync, only after all reads
	 */
	FUNC3(conf->mirrors[d].rdev, conf->mddev);
	if (FUNC6(R10BIO_IsRecover, &r10_bio->state) ||
	    FUNC1(&r10_bio->remaining)) {
		/* we have read all the blocks,
		 * do the comparison in process context in raid10d
		 */
		FUNC4(r10_bio);
	}
}