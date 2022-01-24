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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_jogdial ; 
 int /*<<< orphan*/  dev_attr_wireless ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* tc1100_device ; 

__attribute__((used)) static int FUNC2(void)
{
	int ret;

	ret = FUNC0(&tc1100_device->dev, &dev_attr_wireless);
	if (ret)
		goto add_sysfs_error;

	ret = FUNC0(&tc1100_device->dev, &dev_attr_jogdial);
	if (ret)
		goto add_sysfs_error;

	return ret;

add_sysfs_error:
	FUNC1();
	return ret;
}