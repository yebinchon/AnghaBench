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
struct usb_usbvision {scalar_t__ power; int initialized; scalar_t__ user; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_IO ; 
 int EBUSY ; 
 scalar_t__ ISOC_MODE_COMPRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ isoc_mode ; 
 scalar_t__ power_on_at_open ; 
 int /*<<< orphan*/  FUNC1 (struct usb_usbvision*) ; 
 int FUNC2 (struct usb_usbvision*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_usbvision*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_usbvision*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_usbvision*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_usbvision*) ; 
 int FUNC7 (struct usb_usbvision*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_usbvision*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_usbvision*) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_usbvision*) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_usbvision*) ; 
 int FUNC12 (struct usb_usbvision*) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_usbvision*) ; 
 int FUNC14 (struct usb_usbvision*,scalar_t__) ; 
 struct usb_usbvision* FUNC15 (struct file*) ; 

__attribute__((used)) static int FUNC16(struct file *file)
{
	struct usb_usbvision *usbvision = FUNC15(file);
	int err_code = 0;

	FUNC0(DBG_IO, "open");

	FUNC11(usbvision);

	if (usbvision->user)
		err_code = -EBUSY;
	else {
		/* Allocate memory for the scratch ring buffer */
		err_code = FUNC12(usbvision);
		if (isoc_mode == ISOC_MODE_COMPRESS) {
			/* Allocate intermediate decompression buffers
			   only if needed */
			err_code = FUNC2(usbvision);
		}
		if (err_code) {
			/* Deallocate all buffers if trouble */
			FUNC13(usbvision);
			FUNC3(usbvision);
		}
	}

	/* If so far no errors then we shall start the camera */
	if (!err_code) {
		if (usbvision->power == 0) {
			FUNC10(usbvision);
			FUNC5(usbvision);
		}

		/* Send init sequence only once, it's large! */
		if (!usbvision->initialized) {
			int setup_ok = 0;
			setup_ok = FUNC14(usbvision, isoc_mode);
			if (setup_ok)
				usbvision->initialized = 1;
			else
				err_code = -EBUSY;
		}

		if (!err_code) {
			FUNC1(usbvision);
			err_code = FUNC7(usbvision);
			/* device must be initialized before isoc transfer */
			FUNC8(usbvision, 0);
			usbvision->user++;
		} else {
			if (power_on_at_open) {
				FUNC6(usbvision);
				FUNC9(usbvision);
				usbvision->initialized = 0;
			}
		}
	}

	/* prepare queues */
	FUNC4(usbvision);

	FUNC0(DBG_IO, "success");
	return err_code;
}