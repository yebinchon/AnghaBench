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
struct r10conf {int /*<<< orphan*/  device_lock; } ;
struct r10bio {int /*<<< orphan*/  state; TYPE_1__* mddev; struct bio* master_bio; } ;
struct bio {scalar_t__ bi_phys_segments; int /*<<< orphan*/  bi_flags; } ;
struct TYPE_2__ {struct r10conf* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_UPTODATE ; 
 int /*<<< orphan*/  R10BIO_Uptodate ; 
 int /*<<< orphan*/  FUNC0 (struct r10conf*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct r10bio*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct r10bio *r10_bio)
{
	struct bio *bio = r10_bio->master_bio;
	int done;
	struct r10conf *conf = r10_bio->mddev->private;

	if (bio->bi_phys_segments) {
		unsigned long flags;
		FUNC4(&conf->device_lock, flags);
		bio->bi_phys_segments--;
		done = (bio->bi_phys_segments == 0);
		FUNC5(&conf->device_lock, flags);
	} else
		done = 1;
	if (!FUNC6(R10BIO_Uptodate, &r10_bio->state))
		FUNC2(BIO_UPTODATE, &bio->bi_flags);
	if (done) {
		FUNC1(bio, 0);
		/*
		 * Wake up any possible resync thread that waits for the device
		 * to go idle.
		 */
		FUNC0(conf);
	}
	FUNC3(r10_bio);
}