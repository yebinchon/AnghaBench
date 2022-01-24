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
struct mousedev {scalar_t__ minor; int /*<<< orphan*/  mutex; int /*<<< orphan*/  open; int /*<<< orphan*/  handle; int /*<<< orphan*/  exist; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ MOUSEDEV_MIX ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct mousedev *mousedev)
{
	int retval;

	retval = FUNC2(&mousedev->mutex);
	if (retval)
		return retval;

	if (mousedev->minor == MOUSEDEV_MIX)
		FUNC1();
	else if (!mousedev->exist)
		retval = -ENODEV;
	else if (!mousedev->open++) {
		retval = FUNC0(&mousedev->handle);
		if (retval)
			mousedev->open--;
	}

	FUNC3(&mousedev->mutex);
	return retval;
}