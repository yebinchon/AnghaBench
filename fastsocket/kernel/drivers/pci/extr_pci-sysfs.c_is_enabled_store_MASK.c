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
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 size_t EIO ; 
 size_t EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 size_t FUNC2 (struct pci_dev*) ; 
 scalar_t__ FUNC3 (struct pci_dev*) ; 
 size_t FUNC4 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 struct pci_dev* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				struct device_attribute *attr, const char *buf,
				size_t count)
{
	struct pci_dev *pdev = FUNC5(dev);
	unsigned long val;
	ssize_t result = FUNC4(buf, 0, &val);

	if (result < 0)
		return result;

	/* this can crash the machine when done on the "wrong" device */
	if (!FUNC0(CAP_SYS_ADMIN))
		return -EPERM;

	if (!val) {
		if (FUNC3(pdev))
			FUNC1(pdev);
		else
			result = -EIO;
	} else
		result = FUNC2(pdev);

	return result < 0 ? result : count;
}