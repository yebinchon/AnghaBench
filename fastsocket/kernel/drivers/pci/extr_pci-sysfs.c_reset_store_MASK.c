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
struct pci_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 scalar_t__ FUNC0 (struct pci_dev*) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 struct pci_dev* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
			   struct device_attribute *attr, const char *buf,
			   size_t count)
{
	struct pci_dev *pdev = FUNC2(dev);
	unsigned long val;
	ssize_t result = FUNC1(buf, 0, &val);

	if (result < 0)
		return result;

	if (val != 1)
		return -EINVAL;

	result = FUNC0(pdev);
	if (result < 0)
		return result;

	return count;
}