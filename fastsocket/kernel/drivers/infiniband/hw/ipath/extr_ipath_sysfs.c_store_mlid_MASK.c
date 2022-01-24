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
struct ipath_devdata {scalar_t__ ipath_mlid; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ IPATH_MULTICAST_LID_BASE ; 
 struct ipath_devdata* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipath_devdata*,char*) ; 
 int FUNC2 (char const*,scalar_t__*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
			 struct device_attribute *attr,
			  const char *buf,
			  size_t count)
{
	struct ipath_devdata *dd = FUNC0(dev);
	u16 mlid;
	int ret;

	ret = FUNC2(buf, &mlid);
	if (ret < 0 || mlid < IPATH_MULTICAST_LID_BASE)
		goto invalid;

	dd->ipath_mlid = mlid;

	goto bail;
invalid:
	FUNC1(dd, "attempt to set invalid MLID\n");
bail:
	return ret;
}