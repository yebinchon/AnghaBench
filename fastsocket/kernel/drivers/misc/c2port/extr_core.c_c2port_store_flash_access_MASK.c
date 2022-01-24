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
struct c2port_device {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; int /*<<< orphan*/  mutex; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct c2port_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct c2port_device* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char const*,char*,int*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				struct device_attribute *attr,
				const char *buf, size_t count)
{
	struct c2port_device *c2dev = FUNC2(dev);
	int status;
	ssize_t ret;

	ret = FUNC5(buf, "%d", &status);
	if (ret != 1)
		return -EINVAL;

	FUNC3(&c2dev->mutex);
	ret = FUNC0(c2dev, status);
	FUNC4(&c2dev->mutex);

	if (ret < 0) {
		FUNC1(c2dev->dev, "cannot enable %s flash programming\n",
			c2dev->name);
		return ret;
	}

	return count;
}