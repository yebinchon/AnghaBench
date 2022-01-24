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
typedef  int u8 ;
typedef  int u16 ;
struct ipath_devdata {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct ipath_devdata* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipath_devdata*,char*) ; 
 int FUNC2 (char const*,int*) ; 
 int FUNC3 (struct ipath_devdata*,int,int) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
			       struct device_attribute *attr,
			       const char *buf,
			       size_t count)
{
	struct ipath_devdata *dd = FUNC0(dev);
	int ret, stat;
	u16 val;

	ret = FUNC2(buf, &val);
	if (ret <= 0) {
		FUNC1(dd, "attempt to set invalid tempsense config\n");
		goto bail;
	}
	/* If anything but the highest limit, enable T_CRIT_A "interrupt" */
	stat = FUNC3(dd, 9, (val == 0x7f7f) ? 0x80 : 0);
	if (stat) {
		FUNC1(dd, "Unable to set tempsense config\n");
		ret = -1;
		goto bail;
	}
	stat = FUNC3(dd, 0xB, (u8) (val & 0xFF));
	if (stat) {
		FUNC1(dd, "Unable to set local Tcrit\n");
		ret = -1;
		goto bail;
	}
	stat = FUNC3(dd, 0xD, (u8) (val >> 8));
	if (stat) {
		FUNC1(dd, "Unable to set remote Tcrit\n");
		ret = -1;
		goto bail;
	}

bail:
	return ret;
}