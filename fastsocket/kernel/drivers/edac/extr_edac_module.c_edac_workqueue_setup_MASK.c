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

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/ * edac_workqueue ; 

__attribute__((used)) static int FUNC1(void)
{
	edac_workqueue = FUNC0("edac-poller");
	if (edac_workqueue == NULL)
		return -ENODEV;
	else
		return 0;
}