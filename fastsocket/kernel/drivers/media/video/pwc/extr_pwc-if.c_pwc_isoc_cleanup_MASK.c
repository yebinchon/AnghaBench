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
struct pwc_device {scalar_t__ iso_init; scalar_t__ error_status; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 scalar_t__ EPIPE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pwc_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct pwc_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct pwc_device *pdev)
{
	FUNC0(">> pwc_isoc_cleanup()\n");
	if (pdev == NULL)
		return;
	if (pdev->iso_init == 0)
		return;

	FUNC2(pdev);
	FUNC1(pdev);

	/* Stop camera, but only if we are sure the camera is still there (unplug
	   is signalled by EPIPE)
	 */
	if (pdev->error_status != EPIPE) {
		FUNC0("Setting alternate interface 0.\n");
		FUNC3(pdev->udev, 0, 0);
	}

	pdev->iso_init = 0;
	FUNC0("<< pwc_isoc_cleanup()\n");
}