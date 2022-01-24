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
struct ipath_devdata {int (* ipath_f_get_ib_cfg ) (struct ipath_devdata*,int /*<<< orphan*/ ) ;} ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  IPATH_IB_CFG_LWID_ENB ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct ipath_devdata* FUNC0 (struct device*) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct ipath_devdata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
			 struct device_attribute *attr,
			 char *buf)
{
	struct ipath_devdata *dd = FUNC0(dev);
	int ret;

	ret = dd->ipath_f_get_ib_cfg(dd, IPATH_IB_CFG_LWID_ENB);
	if (ret >= 0)
		ret = FUNC1(buf, PAGE_SIZE, "%d\n", ret);
	return ret;
}