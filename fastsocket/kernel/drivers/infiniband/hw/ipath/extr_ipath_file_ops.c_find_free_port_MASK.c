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
struct ipath_user_info {int dummy; } ;
struct ipath_devdata {int ipath_cfgports; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENETDOWN ; 
 int ENODEV ; 
 struct ipath_devdata* FUNC0 (int) ; 
 int FUNC1 (struct ipath_devdata*,int,struct file*,struct ipath_user_info const*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipath_devdata*) ; 

__attribute__((used)) static int FUNC3(int unit, struct file *fp,
			  const struct ipath_user_info *uinfo)
{
	struct ipath_devdata *dd = FUNC0(unit);
	int ret, i;

	if (!dd) {
		ret = -ENODEV;
		goto bail;
	}

	if (!FUNC2(dd)) {
		ret = -ENETDOWN;
		goto bail;
	}

	for (i = 1; i < dd->ipath_cfgports; i++) {
		ret = FUNC1(dd, i, fp, uinfo);
		if (ret != -EBUSY)
			goto bail;
	}
	ret = -EBUSY;

bail:
	return ret;
}