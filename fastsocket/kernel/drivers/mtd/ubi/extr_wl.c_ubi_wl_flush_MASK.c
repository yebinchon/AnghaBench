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
struct ubi_device {scalar_t__ works_count; int /*<<< orphan*/  work_sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int FUNC1 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct ubi_device *ubi)
{
	int err;

	/*
	 * Erase while the pending works queue is not empty, but not more than
	 * the number of currently pending works.
	 */
	FUNC0("flush (%d pending works)", ubi->works_count);
	while (ubi->works_count) {
		err = FUNC1(ubi);
		if (err)
			return err;
	}

	/*
	 * Make sure all the works which have been done in parallel are
	 * finished.
	 */
	FUNC2(&ubi->work_sem);
	FUNC3(&ubi->work_sem);

	/*
	 * And in case last was the WL worker and it canceled the LEB
	 * movement, flush again.
	 */
	while (ubi->works_count) {
		FUNC0("flush more (%d pending works)", ubi->works_count);
		err = FUNC1(ubi);
		if (err)
			return err;
	}

	return 0;
}