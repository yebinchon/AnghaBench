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
struct r10conf {TYPE_1__* mirrors; } ;
struct r10bio {struct mddev* mddev; } ;
struct mddev {struct r10conf* private; } ;
struct md_rdev {int dummy; } ;
struct bio {struct r10bio* bi_private; int /*<<< orphan*/  bi_flags; } ;
struct TYPE_2__ {struct md_rdev* rdev; struct md_rdev* replacement; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_UPTODATE ; 
 int /*<<< orphan*/  FUNC0 (struct r10bio*) ; 
 int FUNC1 (struct r10conf*,struct r10bio*,struct bio*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct mddev*,struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC3 (struct md_rdev*,struct mddev*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct bio *bio, int error)
{
	int uptodate = FUNC5(BIO_UPTODATE, &bio->bi_flags);
	struct r10bio *r10_bio = bio->bi_private;
	struct mddev *mddev = r10_bio->mddev;
	struct r10conf *conf = mddev->private;
	int d;
	int slot;
	int repl;
	struct md_rdev *rdev = NULL;

	d = FUNC1(conf, r10_bio, bio, &slot, &repl);
	if (repl)
		rdev = conf->mirrors[d].replacement;
	if (!rdev) {
		FUNC4();
		rdev = conf->mirrors[d].rdev;
	}

	if (!uptodate) {
		/* FIXME should record badblock */
		FUNC2(mddev, rdev);
	}

	FUNC3(rdev, mddev);
	FUNC0(r10_bio);
}