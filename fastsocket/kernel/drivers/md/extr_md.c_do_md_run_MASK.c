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
struct mddev {int changed; int /*<<< orphan*/  gendisk; int /*<<< orphan*/  array_sectors; int /*<<< orphan*/  sync_thread; int /*<<< orphan*/  thread; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (struct mddev*) ; 
 int FUNC1 (struct mddev*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct mddev *mddev)
{
	int err;

	err = FUNC4(mddev);
	if (err)
		goto out;
	err = FUNC1(mddev);
	if (err) {
		FUNC0(mddev);
		goto out;
	}

	FUNC5(mddev->thread);
	FUNC5(mddev->sync_thread); /* possibly kick off a reshape */

	FUNC7(mddev->gendisk, mddev->array_sectors);
	FUNC6(mddev->gendisk);
	mddev->changed = 1;
	FUNC3(&FUNC2(mddev->gendisk)->kobj, KOBJ_CHANGE);
out:
	return err;
}