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
struct ipath_devdata {int (* ipath_f_set_ib_cfg ) (struct ipath_devdata*,int /*<<< orphan*/ ,int) ;} ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IPATH_IB_CFG_LREV_ENB ; 
 struct ipath_devdata* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipath_devdata*,char*) ; 
 int FUNC2 (char const*,int*) ; 
 int FUNC3 (struct ipath_devdata*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
			  struct device_attribute *attr,
			  const char *buf,
			  size_t count)
{
	struct ipath_devdata *dd = FUNC0(dev);
	int ret, r;
	u16 val;

	ret = FUNC2(buf, &val);
	if (ret >= 0 && val > 1) {
		ret = -EINVAL;
		FUNC1(dd,
			"attempt to set invalid Lane reversal (enable)\n");
		goto bail;
	}

	r = dd->ipath_f_set_ib_cfg(dd, IPATH_IB_CFG_LREV_ENB, val);
	if (r < 0)
		ret = r;

bail:
	return ret;
}