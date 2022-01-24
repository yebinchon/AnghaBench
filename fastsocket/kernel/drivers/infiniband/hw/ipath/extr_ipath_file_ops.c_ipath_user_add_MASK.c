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
struct ipath_devdata {int ipath_unit; int /*<<< orphan*/  user_dev; int /*<<< orphan*/  user_cdev; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ipath_devdata*,char*,int,...) ; 
 int /*<<< orphan*/  ipath_file_ops ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  user_count ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  user_setup ; 
 int /*<<< orphan*/  wildcard_cdev ; 
 int /*<<< orphan*/  wildcard_dev ; 

int FUNC7(struct ipath_devdata *dd)
{
	char name[10];
	int ret;

	if (FUNC0(&user_count) == 1) {
		ret = FUNC6();
		if (ret < 0) {
			FUNC3(dd, "Unable to set up user support: "
				      "error %d\n", -ret);
			goto bail;
		}
		ret = FUNC2(0, "ipath", &ipath_file_ops, &wildcard_cdev,
				&wildcard_dev);
		if (ret < 0) {
			FUNC3(dd, "Could not create wildcard "
				      "minor: error %d\n", -ret);
			goto bail_user;
		}

		FUNC1(&user_setup, 1);
	}

	FUNC4(name, sizeof(name), "ipath%d", dd->ipath_unit);

	ret = FUNC2(dd->ipath_unit + 1, name, &ipath_file_ops,
			&dd->user_cdev, &dd->user_dev);
	if (ret < 0)
		FUNC3(dd, "Could not create user minor %d, %s\n",
			      dd->ipath_unit + 1, name);

	goto bail;

bail_user:
	FUNC5();
bail:
	return ret;
}