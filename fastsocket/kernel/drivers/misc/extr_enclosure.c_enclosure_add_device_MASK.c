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
struct enclosure_device {int components; struct enclosure_component* component; } ;
struct enclosure_component {struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int FUNC0 (struct enclosure_component*) ; 
 int /*<<< orphan*/  FUNC1 (struct enclosure_component*) ; 
 struct device* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 

int FUNC4(struct enclosure_device *edev, int component,
			 struct device *dev)
{
	struct enclosure_component *cdev;

	if (!edev || component >= edev->components)
		return -EINVAL;

	cdev = &edev->component[component];

	if (cdev->dev == dev)
		return -EEXIST;

	if (cdev->dev)
		FUNC1(cdev);

	FUNC3(cdev->dev);
	cdev->dev = FUNC2(dev);
	return FUNC0(cdev);
}