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
typedef  int u64 ;
struct ipath_devdata {int* ipath_statusp; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ PAGE_SIZE ; 
 struct ipath_devdata* FUNC0 (struct device*) ; 
 char** ipath_status_str ; 
 scalar_t__ FUNC1 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
			       struct device_attribute *attr,
			       char *buf)
{
	struct ipath_devdata *dd = FUNC0(dev);
	int i, any;
	u64 s;
	ssize_t ret;

	if (!dd->ipath_statusp) {
		ret = -EINVAL;
		goto bail;
	}

	s = *(dd->ipath_statusp);
	*buf = '\0';
	for (any = i = 0; s && ipath_status_str[i]; i++) {
		if (s & 1) {
			if (any && FUNC1(buf, " ", PAGE_SIZE) >=
			    PAGE_SIZE)
				/* overflow */
				break;
			if (FUNC1(buf, ipath_status_str[i],
				    PAGE_SIZE) >= PAGE_SIZE)
				break;
			any = 1;
		}
		s >>= 1;
	}
	if (any)
		FUNC1(buf, "\n", PAGE_SIZE);

	ret = FUNC2(buf);

bail:
	return ret;
}