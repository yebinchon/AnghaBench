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
struct edac_device_ctl_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  device_ctls_mutex ; 
 int /*<<< orphan*/  FUNC0 (struct edac_device_ctl_info*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct edac_device_ctl_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct edac_device_ctl_info *edac_dev,
					unsigned long value)
{
	/* cancel the current workq request, without the mutex lock */
	FUNC1(edac_dev);

	/* acquire the mutex before doing the workq setup */
	FUNC2(&device_ctls_mutex);

	/* restart the workq request, with new delay value */
	FUNC0(edac_dev, value);

	FUNC3(&device_ctls_mutex);
}