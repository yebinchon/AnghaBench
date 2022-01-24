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
typedef  int /*<<< orphan*/  u16 ;
struct ipath_devdata {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct ipath_devdata* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipath_devdata*,char*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ipath_devdata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
			 struct device_attribute *attr,
			  const char *buf,
			  size_t count)
{
	struct ipath_devdata *dd = FUNC0(dev);
	int ret, r;
	u16 state;

	ret = FUNC2(buf, &state);
	if (ret < 0)
		goto invalid;

	r = FUNC3(dd, state);
	if (r < 0) {
		ret = r;
		goto bail;
	}

	goto bail;
invalid:
	FUNC1(dd, "attempt to set invalid link state\n");
bail:
	return ret;
}