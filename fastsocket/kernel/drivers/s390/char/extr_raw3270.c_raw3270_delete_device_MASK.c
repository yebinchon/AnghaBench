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
struct raw3270 {struct raw3270* ascebc; struct ccw_device* cdev; int /*<<< orphan*/  list; int /*<<< orphan*/  minor; scalar_t__ cltubdev; scalar_t__ clttydev; } ;
struct ccw_device {int /*<<< orphan*/  dev; int /*<<< orphan*/ * handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  IBM_FS3270_MAJOR ; 
 int /*<<< orphan*/  IBM_TTY3270_MAJOR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  class3270 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct raw3270*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  raw3270_mutex ; 

__attribute__((used)) static void
FUNC9(struct raw3270 *rp)
{
	struct ccw_device *cdev;

	/* Remove from device chain. */
	FUNC6(&raw3270_mutex);
	if (rp->clttydev && !FUNC0(rp->clttydev))
		FUNC3(class3270, FUNC1(IBM_TTY3270_MAJOR, rp->minor));
	if (rp->cltubdev && !FUNC0(rp->cltubdev))
		FUNC3(class3270, FUNC1(IBM_FS3270_MAJOR, rp->minor));
	FUNC5(&rp->list);
	FUNC7(&raw3270_mutex);

	/* Disconnect from ccw_device. */
	cdev = rp->cdev;
	rp->cdev = NULL;
	FUNC2(&cdev->dev, NULL);
	cdev->handler = NULL;

	/* Put ccw_device structure. */
	FUNC8(&cdev->dev);

	/* Now free raw3270 structure. */
	FUNC4(rp->ascebc);
	FUNC4(rp);
}