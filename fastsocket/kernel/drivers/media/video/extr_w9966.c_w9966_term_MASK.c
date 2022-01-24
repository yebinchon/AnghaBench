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
struct w9966_dev {int /*<<< orphan*/  pdev; int /*<<< orphan*/  pport; int /*<<< orphan*/  vdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE1284_MODE_COMPAT ; 
 int /*<<< orphan*/  W9966_STATE_PDEV ; 
 int /*<<< orphan*/  W9966_STATE_VDEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct w9966_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct w9966_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct w9966_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct w9966_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct w9966_dev* cam)
{
// Unregister from v4l
	if (FUNC3(cam, W9966_STATE_VDEV, W9966_STATE_VDEV)) {
		FUNC2(&cam->vdev);
		FUNC6(cam, W9966_STATE_VDEV, 0);
	}

// Terminate from IEEE1284 mode and release pdev block
	if (FUNC3(cam, W9966_STATE_PDEV, W9966_STATE_PDEV)) {
		FUNC4(cam);
		FUNC0(cam->pport, IEEE1284_MODE_COMPAT);
		FUNC5(cam);
	}

// Unregister from parport
	if (FUNC3(cam, W9966_STATE_PDEV, W9966_STATE_PDEV)) {
		FUNC1(cam->pdev);
		FUNC6(cam, W9966_STATE_PDEV, 0);
	}
}