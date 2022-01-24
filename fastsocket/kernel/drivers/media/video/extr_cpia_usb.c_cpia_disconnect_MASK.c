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
struct usb_device {int dummy; } ;
struct usb_cpia {int /*<<< orphan*/ ** buffers; int /*<<< orphan*/ * workbuff; TYPE_1__* curbuff; int /*<<< orphan*/  wq_stream; scalar_t__ open; scalar_t__ present; } ;
struct cam_data {int /*<<< orphan*/ * lowlevel_data; int /*<<< orphan*/  cam_data_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FRAME_ERROR ; 
 int /*<<< orphan*/  cam_list_lock_usb ; 
 int /*<<< orphan*/  FUNC0 (struct cam_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC2 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_cpia*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct cam_data* FUNC7 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct usb_interface *intf)
{
	struct cam_data *cam = FUNC7(intf);
	struct usb_cpia *ucpia;
	struct usb_device *udev;

	FUNC8(intf, NULL);
	if (!cam)
		return;

	ucpia = (struct usb_cpia *) cam->lowlevel_data;
	FUNC5( &cam_list_lock_usb );
	FUNC4(&cam->cam_data_list);
	FUNC6( &cam_list_lock_usb );

	ucpia->present = 0;

	FUNC0(cam);
	if(ucpia->open)
		FUNC1(cam->lowlevel_data);

	ucpia->curbuff->status = FRAME_ERROR;

	if (FUNC10(&ucpia->wq_stream))
		FUNC11(&ucpia->wq_stream);

	udev = FUNC2(intf);

	ucpia->curbuff = ucpia->workbuff = NULL;

	FUNC9(ucpia->buffers[2]);
	ucpia->buffers[2] = NULL;

	FUNC9(ucpia->buffers[1]);
	ucpia->buffers[1] = NULL;

	FUNC9(ucpia->buffers[0]);
	ucpia->buffers[0] = NULL;

	cam->lowlevel_data = NULL;
	FUNC3(ucpia);
}