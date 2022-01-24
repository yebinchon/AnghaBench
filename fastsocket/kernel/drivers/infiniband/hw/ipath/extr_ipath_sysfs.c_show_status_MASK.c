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
struct ipath_devdata {scalar_t__* ipath_statusp; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct ipath_devdata* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,unsigned long long) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
			   struct device_attribute *attr,
			   char *buf)
{
	struct ipath_devdata *dd = FUNC0(dev);
	ssize_t ret;

	if (!dd->ipath_statusp) {
		ret = -EINVAL;
		goto bail;
	}

	ret = FUNC1(buf, PAGE_SIZE, "0x%llx\n",
			(unsigned long long) *(dd->ipath_statusp));

bail:
	return ret;
}