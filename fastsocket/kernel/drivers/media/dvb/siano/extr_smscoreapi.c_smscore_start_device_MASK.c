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
struct smscore_device_t {int /*<<< orphan*/  device; int /*<<< orphan*/  devpath; } ;

/* Variables and functions */
 int /*<<< orphan*/  g_smscore_deviceslock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct smscore_device_t*) ; 
 int FUNC4 (struct smscore_device_t*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct smscore_device_t*,int /*<<< orphan*/ ) ; 

int FUNC7(struct smscore_device_t *coredev)
{
	int rc = FUNC6(
			coredev, FUNC5(coredev->devpath));
	if (rc < 0) {
		FUNC2("set device mode faile , rc %d", rc);
		return rc;
	}

	FUNC0(&g_smscore_deviceslock);

	rc = FUNC4(coredev, coredev->device, 1);
	FUNC3(coredev);

	FUNC2("device %p started, rc %d", coredev, rc);

	FUNC1(&g_smscore_deviceslock);

	return rc;
}