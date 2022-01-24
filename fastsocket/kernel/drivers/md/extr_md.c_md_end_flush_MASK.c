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
struct mddev {int /*<<< orphan*/  flush_work; int /*<<< orphan*/  flush_pending; } ;
struct md_rdev {struct mddev* mddev; } ;
struct bio {struct md_rdev* bi_private; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  md_wq ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct md_rdev*,struct mddev*) ; 

__attribute__((used)) static void FUNC4(struct bio *bio, int err)
{
	struct md_rdev *rdev = bio->bi_private;
	struct mddev *mddev = rdev->mddev;

	FUNC3(rdev, mddev);

	if (FUNC0(&mddev->flush_pending)) {
		/* The pre-request flush has finished */
		FUNC2(md_wq, &mddev->flush_work);
	}
	FUNC1(bio);
}