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
struct usb_stv {int removed; int /*<<< orphan*/  user; int /*<<< orphan*/ * vdev; } ;
struct usb_interface {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct usb_stv* FUNC1 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_stv*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5 (struct usb_interface *intf)
{
	struct usb_stv *stv680 = FUNC1 (intf);

	FUNC2 (intf, NULL);

	if (stv680) {
		/* We don't want people trying to open up the device */
		if (stv680->vdev) {
			FUNC0(stv680->vdev);
			FUNC4(stv680->vdev);
			stv680->vdev = NULL;
		}
		if (!stv680->user) {
			FUNC3 (stv680);
		} else {
			stv680->removed = 1;
		}
	}
}