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
struct c2port_device {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; int /*<<< orphan*/  mutex; int /*<<< orphan*/  access; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ EBUSY ; 
 scalar_t__ FUNC0 (struct c2port_device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct c2port_device* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				struct device_attribute *attr, char *buf)
{
	struct c2port_device *c2dev = FUNC2(dev);
	ssize_t ret;

	/* Check the device access status */
	if (!c2dev->access)
		return -EBUSY;

	FUNC3(&c2dev->mutex);
	ret = FUNC0(c2dev, buf);
	FUNC4(&c2dev->mutex);

	if (ret < 0)
		FUNC1(c2dev->dev, "cannot read from %s\n", c2dev->name);

	return ret;
}