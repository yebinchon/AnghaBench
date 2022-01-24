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
struct r1conf {int raid_disks; int /*<<< orphan*/  mddev; TYPE_1__* mirrors; } ;
struct r1bio {int /*<<< orphan*/  state; int /*<<< orphan*/ ** bios; int /*<<< orphan*/  sectors; int /*<<< orphan*/  sector; } ;
struct md_rdev {int dummy; } ;
struct TYPE_2__ {struct md_rdev* rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/ * IO_MADE_GOOD ; 
 int /*<<< orphan*/  R1BIO_Degraded ; 
 int /*<<< orphan*/  R1BIO_WriteError ; 
 int /*<<< orphan*/  FUNC0 (struct r1bio*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC2 (struct r1bio*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct r1bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct md_rdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct md_rdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct r1conf *conf, struct r1bio *r1_bio)
{
	int m;
	for (m = 0; m < conf->raid_disks * 2 ; m++)
		if (r1_bio->bios[m] == IO_MADE_GOOD) {
			struct md_rdev *rdev = conf->mirrors[m].rdev;
			FUNC4(rdev,
					     r1_bio->sector,
					     r1_bio->sectors, 0);
			FUNC5(rdev, conf->mddev);
		} else if (r1_bio->bios[m] != NULL) {
			/* This drive got a write error.  We need to
			 * narrow down and record precise write
			 * errors.
			 */
			if (!FUNC2(r1_bio, m)) {
				FUNC1(conf->mddev,
					 conf->mirrors[m].rdev);
				/* an I/O failed, we can't clear the bitmap */
				FUNC6(R1BIO_Degraded, &r1_bio->state);
			}
			FUNC5(conf->mirrors[m].rdev,
					 conf->mddev);
		}
	if (FUNC7(R1BIO_WriteError, &r1_bio->state))
		FUNC0(r1_bio);
	FUNC3(r1_bio);
}