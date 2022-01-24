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
typedef  scalar_t__ u16 ;
struct ipath_devdata {int ipath_flags; int /*<<< orphan*/ * ipath_statusp; int /*<<< orphan*/  ipath_unit; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int IPATH_DISABLED ; 
 int /*<<< orphan*/  IPATH_STATUS_ADMIN_DISABLED ; 
 struct ipath_devdata* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ipath_devdata*,char*,...) ; 
 scalar_t__ FUNC3 (struct ipath_devdata*,int) ; 
 scalar_t__ FUNC4 (char const*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct ipath_devdata*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
			 struct device_attribute *attr,
			  const char *buf,
			  size_t count)
{
	struct ipath_devdata *dd = FUNC0(dev);
	ssize_t ret;
	u16 enable = 0;

	ret = FUNC4(buf, &enable);
	if (ret < 0) {
		FUNC2(dd, "attempt to use non-numeric on enable\n");
		goto bail;
	}

	if (enable) {
		if (!(dd->ipath_flags & IPATH_DISABLED))
			goto bail;

		FUNC1(dev, "Enabling unit %d\n", dd->ipath_unit);
		/* same as post-reset */
		ret = FUNC3(dd, 1);
		if (ret)
			FUNC2(dd, "Failed to enable unit %d\n",
				      dd->ipath_unit);
		else {
			dd->ipath_flags &= ~IPATH_DISABLED;
			*dd->ipath_statusp &= ~IPATH_STATUS_ADMIN_DISABLED;
		}
	}
	else if (!(dd->ipath_flags & IPATH_DISABLED)) {
		FUNC1(dev, "Disabling unit %d\n", dd->ipath_unit);
		FUNC5(dd);
		dd->ipath_flags |= IPATH_DISABLED;
		*dd->ipath_statusp |= IPATH_STATUS_ADMIN_DISABLED;
	}

bail:
	return ret;
}