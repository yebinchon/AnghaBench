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
struct mddev {int suspended; int /*<<< orphan*/  safemode_timer; TYPE_1__* pers; int /*<<< orphan*/  active_io; int /*<<< orphan*/  sb_wait; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* quiesce ) (struct mddev*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mddev*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

void FUNC6(struct mddev *mddev)
{
	FUNC0(mddev->suspended);
	mddev->suspended = 1;
	FUNC4();
	FUNC5(mddev->sb_wait, FUNC1(&mddev->active_io) == 0);
	mddev->pers->quiesce(mddev, 1);

	FUNC2(&mddev->safemode_timer);
}