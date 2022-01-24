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
struct ipath_devdata {int /*<<< orphan*/  diag_dev; int /*<<< orphan*/  diag_cdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  diagpkt_cdev ; 
 int /*<<< orphan*/  diagpkt_count ; 
 int /*<<< orphan*/  diagpkt_dev ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC2(struct ipath_devdata *dd)
{
	if (FUNC0(&diagpkt_count))
		FUNC1(&diagpkt_cdev, &diagpkt_dev);

	FUNC1(&dd->diag_cdev, &dd->diag_dev);
}