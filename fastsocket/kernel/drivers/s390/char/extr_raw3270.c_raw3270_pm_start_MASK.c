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
struct raw3270 {int /*<<< orphan*/  cdev; TYPE_2__* view; int /*<<< orphan*/  flags; } ;
struct ccw_device {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {TYPE_1__* fn; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* activate ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  RAW3270_FLAGS_FROZEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct raw3270* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC6(struct ccw_device *cdev)
{
	struct raw3270 *rp;
	unsigned long flags;

	rp = FUNC1(&cdev->dev);
	if (!rp)
		return 0;
	FUNC3(FUNC2(rp->cdev), flags);
	FUNC0(RAW3270_FLAGS_FROZEN, &rp->flags);
	if (rp->view)
		rp->view->fn->activate(rp->view);
	FUNC4(FUNC2(rp->cdev), flags);
	return 0;
}