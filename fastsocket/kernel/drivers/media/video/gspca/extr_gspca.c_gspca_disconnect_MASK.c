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
struct usb_interface {int dummy; } ;
struct input_dev {int dummy; } ;
struct gspca_dev {int /*<<< orphan*/  vdev; int /*<<< orphan*/  usb_lock; int /*<<< orphan*/ * dev; struct input_dev* input_dev; int /*<<< orphan*/  wq; scalar_t__ present; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_PROBE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct gspca_dev* FUNC6 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct usb_interface *intf)
{
	struct gspca_dev *gspca_dev = FUNC6(intf);
#if defined(CONFIG_INPUT) || defined(CONFIG_INPUT_MODULE)
	struct input_dev *input_dev;
#endif

	FUNC0(D_PROBE, "%s disconnect",
		FUNC8(&gspca_dev->vdev));
	FUNC4(&gspca_dev->usb_lock);

	gspca_dev->present = 0;
	FUNC10(&gspca_dev->wq);

	FUNC1(gspca_dev);

#if defined(CONFIG_INPUT) || defined(CONFIG_INPUT_MODULE)
	gspca_input_destroy_urb(gspca_dev);
	input_dev = gspca_dev->input_dev;
	if (input_dev) {
		gspca_dev->input_dev = NULL;
		input_unregister_device(input_dev);
	}
#endif

	/* the device is freed at exit of this function */
	gspca_dev->dev = NULL;
	FUNC5(&gspca_dev->usb_lock);

	FUNC7(intf, NULL);

	/* release the device */
	/* (this will call gspca_release() immediatly or on last close) */
	FUNC9(&gspca_dev->vdev);

/*	PDEBUG(D_PROBE, "disconnect complete"); */
}