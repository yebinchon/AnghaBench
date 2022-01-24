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
struct ccw_device {int /*<<< orphan*/  dev; scalar_t__ online; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ccw_device*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vmur_mutex ; 

__attribute__((used)) static void FUNC11(struct ccw_device *cdev)
{
	unsigned long flags;

	FUNC0("ur_remove\n");

	FUNC4(&vmur_mutex);

	if (cdev->online)
		FUNC9(cdev, 1);
	FUNC8(&cdev->dev);

	FUNC6(FUNC3(cdev), flags);
	FUNC10(FUNC1(&cdev->dev));
	FUNC2(&cdev->dev, NULL);
	FUNC7(FUNC3(cdev), flags);

	FUNC5(&vmur_mutex);
}