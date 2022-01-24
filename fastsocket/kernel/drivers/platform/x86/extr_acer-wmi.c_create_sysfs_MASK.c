#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACER_CAP_THREEG ; 
 int ENOMEM ; 
 TYPE_1__* acer_platform_device ; 
 int /*<<< orphan*/  dev_attr_interface ; 
 int /*<<< orphan*/  dev_attr_threeg ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(void)
{
	int retval = -ENOMEM;

	if (FUNC1(ACER_CAP_THREEG)) {
		retval = FUNC0(&acer_platform_device->dev,
			&dev_attr_threeg);
		if (retval)
			goto error_sysfs;
	}

	retval = FUNC0(&acer_platform_device->dev,
		&dev_attr_interface);
	if (retval)
		goto error_sysfs;

	return 0;

error_sysfs:
		FUNC2(acer_platform_device);
	return retval;
}