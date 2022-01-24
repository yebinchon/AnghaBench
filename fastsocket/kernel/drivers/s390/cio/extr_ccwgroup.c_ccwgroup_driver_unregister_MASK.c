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
struct device {int dummy; } ;
struct ccwgroup_driver {int /*<<< orphan*/  driver; } ;
struct ccwgroup_device {int /*<<< orphan*/  reg_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  __ccwgroup_match_all ; 
 int /*<<< orphan*/  FUNC0 (struct ccwgroup_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ccwgroup_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 struct device* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct ccwgroup_device* FUNC10 (struct device*) ; 

void FUNC11(struct ccwgroup_driver *cdriver)
{
	struct device *dev;

	/* We don't want ccwgroup devices to live longer than their driver. */
	FUNC5(&cdriver->driver);
	while ((dev = FUNC3(&cdriver->driver, NULL, NULL,
					 __ccwgroup_match_all))) {
		struct ccwgroup_device *gdev = FUNC10(dev);

		FUNC6(&gdev->reg_mutex);
		FUNC1(gdev);
		FUNC2(dev);
		FUNC0(gdev);
		FUNC7(&gdev->reg_mutex);
		FUNC8(dev);
	}
	FUNC9(&cdriver->driver);
	FUNC4(&cdriver->driver);
}