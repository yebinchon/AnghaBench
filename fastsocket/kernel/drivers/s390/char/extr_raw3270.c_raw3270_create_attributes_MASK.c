#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct raw3270 {TYPE_1__* cdev; int /*<<< orphan*/  minor; void* cltubdev; void* clttydev; } ;
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_4__ {TYPE_2__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IBM_FS3270_MAJOR ; 
 int /*<<< orphan*/  IBM_TTY3270_MAJOR ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  class3270 ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  raw3270_attr_group ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct raw3270 *rp)
{
	int rc;

	rc = FUNC6(&rp->cdev->dev.kobj, &raw3270_attr_group);
	if (rc)
		goto out;

	rp->clttydev = FUNC4(class3270, &rp->cdev->dev,
				     FUNC1(IBM_TTY3270_MAJOR, rp->minor), NULL,
				     "tty%s", FUNC3(&rp->cdev->dev));
	if (FUNC0(rp->clttydev)) {
		rc = FUNC2(rp->clttydev);
		goto out_ttydev;
	}

	rp->cltubdev = FUNC4(class3270, &rp->cdev->dev,
				     FUNC1(IBM_FS3270_MAJOR, rp->minor), NULL,
				     "tub%s", FUNC3(&rp->cdev->dev));
	if (!FUNC0(rp->cltubdev))
		goto out;

	rc = FUNC2(rp->cltubdev);
	FUNC5(class3270, FUNC1(IBM_TTY3270_MAJOR, rp->minor));

out_ttydev:
	FUNC7(&rp->cdev->dev.kobj, &raw3270_attr_group);
out:
	return rc;
}