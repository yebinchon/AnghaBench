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
struct qib_devdata {int unit; int /*<<< orphan*/  user_device; int /*<<< orphan*/  user_cdev; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qib_file_ops ; 
 int /*<<< orphan*/  FUNC2 (struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 int /*<<< orphan*/  user_count ; 
 int /*<<< orphan*/  wildcard_cdev ; 
 int /*<<< orphan*/  wildcard_device ; 

__attribute__((used)) static int FUNC4(struct qib_devdata *dd)
{
	char name[10];
	int ret;

	if (FUNC0(&user_count) == 1) {
		ret = FUNC1(0, "ipath", &qib_file_ops,
				    &wildcard_cdev, &wildcard_device);
		if (ret)
			goto done;
	}

	FUNC3(name, sizeof(name), "ipath%d", dd->unit);
	ret = FUNC1(dd->unit + 1, name, &qib_file_ops,
			    &dd->user_cdev, &dd->user_device);
	if (ret)
		FUNC2(dd);
done:
	return ret;
}