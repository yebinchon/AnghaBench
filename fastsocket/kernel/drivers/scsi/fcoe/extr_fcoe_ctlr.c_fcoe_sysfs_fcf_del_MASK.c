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
struct fcoe_fcf_device {int dummy; } ;
struct fcoe_fcf {int /*<<< orphan*/ * fcf_dev; int /*<<< orphan*/  list; struct fcoe_ctlr* fip; } ;
struct fcoe_ctlr_device {int /*<<< orphan*/  lock; } ;
struct fcoe_ctlr {int /*<<< orphan*/  fcf_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct fcoe_ctlr_device* FUNC1 (struct fcoe_ctlr*) ; 
 int /*<<< orphan*/  FUNC2 (struct fcoe_fcf_device*) ; 
 struct fcoe_fcf_device* FUNC3 (struct fcoe_fcf*) ; 
 int /*<<< orphan*/  FUNC4 (struct fcoe_fcf*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct fcoe_fcf *new)
{
	struct fcoe_ctlr *fip = new->fip;
	struct fcoe_ctlr_device *cdev;
	struct fcoe_fcf_device *fcf_dev;

	FUNC5(&new->list);
	fip->fcf_count--;

	/*
	 * If ctlr_dev doesn't exist then it means we're a libfcoe user
	 * who doesn't use fcoe_syfs and didn't allocate a fcoe_ctlr_device
	 * or a fcoe_fcf_device.
	 *
	 * fnic would be an example of a driver with this behavior. In this
	 * case we want to remove the fcoe_fcf from the fcoe_ctlr list (above),
	 * but we don't want to make sysfs changes.
	 */
	cdev = FUNC1(fip);
	if (cdev) {
		FUNC6(&cdev->lock);
		fcf_dev = FUNC3(new);
		FUNC0(!fcf_dev);
		new->fcf_dev = NULL;
		FUNC2(fcf_dev);
		FUNC4(new);
		FUNC7(&cdev->lock);
	}
}