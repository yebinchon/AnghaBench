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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct c2port_device {int /*<<< orphan*/  mutex; scalar_t__ flash_access; int /*<<< orphan*/  access; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct c2port_device*) ; 
 struct c2port_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				struct device_attribute *attr,
				const char *buf, size_t count)
{
	struct c2port_device *c2dev = FUNC1(dev);

	/* Check the device access status */
	if (!c2dev->access)
		return -EBUSY;

	FUNC2(&c2dev->mutex);

	FUNC0(c2dev);
	c2dev->flash_access = 0;

	FUNC3(&c2dev->mutex);

	return count;
}