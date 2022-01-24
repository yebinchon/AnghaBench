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
struct mddev {int /*<<< orphan*/  sb_wait; int /*<<< orphan*/  pending_writes; } ;
struct md_rdev {struct mddev* mddev; } ;
struct bio {int /*<<< orphan*/  bi_flags; struct md_rdev* bi_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_UPTODATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct mddev*,struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct bio *bio, int error)
{
	struct md_rdev *rdev = bio->bi_private;
	struct mddev *mddev = rdev->mddev;

	if (error || !FUNC5(BIO_UPTODATE, &bio->bi_flags)) {
		FUNC4("md: super_written gets error=%d, uptodate=%d\n",
		       error, FUNC5(BIO_UPTODATE, &bio->bi_flags));
		FUNC0(FUNC5(BIO_UPTODATE, &bio->bi_flags));
		FUNC3(mddev, rdev);
	}

	if (FUNC1(&mddev->pending_writes))
		FUNC6(&mddev->sb_wait);
	FUNC2(bio);
}