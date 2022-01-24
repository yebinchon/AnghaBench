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
struct ipath_devdata {int ipath_unit; int /*<<< orphan*/  diag_dev; int /*<<< orphan*/  diag_cdev; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int IPATH_DIAGPKT_MINOR ; 
 int IPATH_DIAG_MINOR_BASE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  diag_file_ops ; 
 int /*<<< orphan*/  diagpkt_cdev ; 
 int /*<<< orphan*/  diagpkt_count ; 
 int /*<<< orphan*/  diagpkt_dev ; 
 int /*<<< orphan*/  diagpkt_file_ops ; 
 int FUNC1 (int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ipath_devdata*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 

int FUNC4(struct ipath_devdata *dd)
{
	char name[16];
	int ret = 0;

	if (FUNC0(&diagpkt_count) == 1) {
		ret = FUNC1(IPATH_DIAGPKT_MINOR,
				      "ipath_diagpkt", &diagpkt_file_ops,
				      &diagpkt_cdev, &diagpkt_dev);

		if (ret) {
			FUNC2(dd, "Couldn't create ipath_diagpkt "
				      "device: %d", ret);
			goto done;
		}
	}

	FUNC3(name, sizeof(name), "ipath_diag%d", dd->ipath_unit);

	ret = FUNC1(IPATH_DIAG_MINOR_BASE + dd->ipath_unit, name,
			      &diag_file_ops, &dd->diag_cdev,
			      &dd->diag_dev);
	if (ret)
		FUNC2(dd, "Couldn't create %s device: %d",
			      name, ret);

done:
	return ret;
}