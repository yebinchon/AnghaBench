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
struct mousedev {int /*<<< orphan*/  dev; int /*<<< orphan*/  mixdev_node; scalar_t__ mixdev_open; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mousedev*) ; 
 TYPE_1__* mousedev_mix ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct mousedev *mousedev)
{
	FUNC2(&mousedev_mix->mutex);

	if (mousedev->mixdev_open) {
		mousedev->mixdev_open = 0;
		FUNC1(mousedev);
	}

	FUNC0(&mousedev->mixdev_node);
	FUNC3(&mousedev_mix->mutex);

	FUNC4(&mousedev->dev);
}