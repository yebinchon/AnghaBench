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
struct pvr2_hdw {int /*<<< orphan*/  usb_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PVR2_TRACE_ERROR_LEGS ; 
 int /*<<< orphan*/  PVR2_TRACE_INFO ; 
 int /*<<< orphan*/  PVR2_TRACE_INIT ; 
 int init_pause_msec ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct pvr2_hdw *hdw)
{
	int ret;
	FUNC1(PVR2_TRACE_INIT,"Performing a device reset...");
	ret = FUNC2(hdw->usb_dev,NULL);
	if (ret == 0) {
		ret = FUNC3(hdw->usb_dev);
		FUNC4(hdw->usb_dev);
	} else {
		FUNC1(PVR2_TRACE_ERROR_LEGS,
			   "Failed to lock USB device ret=%d",ret);
	}
	if (init_pause_msec) {
		FUNC1(PVR2_TRACE_INFO,
			   "Waiting %u msec for hardware to settle",
			   init_pause_msec);
		FUNC0(init_pause_msec);
	}

}