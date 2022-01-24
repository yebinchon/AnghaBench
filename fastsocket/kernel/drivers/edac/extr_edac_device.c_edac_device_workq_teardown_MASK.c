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
struct edac_device_ctl_info {int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  edac_workqueue ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct edac_device_ctl_info *edac_dev)
{
	int status;

	status = FUNC0(&edac_dev->work);
	if (status == 0) {
		/* workq instance might be running, wait for it */
		FUNC1(edac_workqueue);
	}
}