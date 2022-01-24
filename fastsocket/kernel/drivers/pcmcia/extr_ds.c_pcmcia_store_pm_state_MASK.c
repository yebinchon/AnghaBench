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
struct pcmcia_device {scalar_t__ suspended; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 
 struct pcmcia_device* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev, struct device_attribute *attr,
				     const char *buf, size_t count)
{
	struct pcmcia_device *p_dev = FUNC3(dev);
	int ret = 0;

        if (!count)
                return -EINVAL;

	if ((!p_dev->suspended) && !FUNC2(buf, "off", 3))
		ret = FUNC1(dev);
	else if (p_dev->suspended && !FUNC2(buf, "on", 2))
		FUNC0(dev);

	return ret ? ret : count;
}