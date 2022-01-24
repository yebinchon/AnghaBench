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
typedef  int u16 ;
struct ipath_devdata {int /*<<< orphan*/  ipath_lid; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 struct ipath_devdata* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipath_devdata*,char*,int) ; 
 int FUNC2 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipath_devdata*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
			 struct device_attribute *attr,
			 const char *buf,
			 size_t count)
{
	struct ipath_devdata *dd = FUNC0(dev);
	u16 lmc = 0;
	int ret;

	ret = FUNC2(buf, &lmc);
	if (ret < 0)
		goto invalid;

	if (lmc > 7) {
		ret = -EINVAL;
		goto invalid;
	}

	FUNC3(dd, dd->ipath_lid, lmc);

	goto bail;
invalid:
	FUNC1(dd, "attempt to set invalid LMC %u\n", lmc);
bail:
	return ret;
}