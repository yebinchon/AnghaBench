#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int dummy; } ;
struct camera_data {scalar_t__ open_count; int /*<<< orphan*/  wq_stream; TYPE_1__* curbuff; scalar_t__ buffers; scalar_t__ present; } ;
struct TYPE_2__ {scalar_t__ length; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FRAME_READY ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  cpia2_driver ; 
 int /*<<< orphan*/  FUNC2 (struct camera_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct camera_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct camera_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct usb_interface*) ; 
 struct camera_data* FUNC6 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct usb_interface *intf)
{
	struct camera_data *cam = FUNC6(intf);
	FUNC7(intf, NULL);
	cam->present = 0;

	FUNC0("Stopping stream\n");
	FUNC3(cam);

	FUNC0("Unregistering camera\n");
	FUNC2(cam);

	if(cam->buffers) {
		FUNC0("Wakeup waiting processes\n");
		cam->curbuff->status = FRAME_READY;
		cam->curbuff->length = 0;
		if (FUNC8(&cam->wq_stream))
			FUNC9(&cam->wq_stream);
	}

	FUNC0("Releasing interface\n");
	FUNC5(&cpia2_driver, intf);

	if (cam->open_count == 0) {
		FUNC0("Freeing camera structure\n");
		FUNC4(cam);
	}

	FUNC1("CPiA2 camera disconnected.\n");
}