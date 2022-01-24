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
struct pvr2_hdw {int flag_disconnected; int /*<<< orphan*/ * usb_intf; int /*<<< orphan*/ * usb_dev; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/ * ctl_write_buffer; int /*<<< orphan*/ * ctl_read_buffer; int /*<<< orphan*/ * ctl_write_urb; int /*<<< orphan*/ * ctl_read_urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  PVR2_TRACE_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pvr2_hdw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct pvr2_hdw*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct pvr2_hdw *hdw)
{
	if (hdw->flag_disconnected) return;
	FUNC2(PVR2_TRACE_INIT,"pvr2_hdw_remove_usb_stuff: hdw=%p",hdw);
	if (hdw->ctl_read_urb) {
		FUNC4(hdw->ctl_read_urb);
		FUNC3(hdw->ctl_read_urb);
		hdw->ctl_read_urb = NULL;
	}
	if (hdw->ctl_write_urb) {
		FUNC4(hdw->ctl_write_urb);
		FUNC3(hdw->ctl_write_urb);
		hdw->ctl_write_urb = NULL;
	}
	if (hdw->ctl_read_buffer) {
		FUNC0(hdw->ctl_read_buffer);
		hdw->ctl_read_buffer = NULL;
	}
	if (hdw->ctl_write_buffer) {
		FUNC0(hdw->ctl_write_buffer);
		hdw->ctl_write_buffer = NULL;
	}
	hdw->flag_disconnected = !0;
	/* If we don't do this, then there will be a dangling struct device
	   reference to our disappearing device persisting inside the V4L
	   core... */
	FUNC5(&hdw->v4l2_dev);
	hdw->usb_dev = NULL;
	hdw->usb_intf = NULL;
	FUNC1(hdw);
}