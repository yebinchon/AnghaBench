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
struct iforce {int /*<<< orphan*/  dev; int /*<<< orphan*/ * usbdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iforce*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iforce*) ; 
 struct iforce* FUNC3 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct usb_interface *intf)
{
	struct iforce *iforce = FUNC3(intf);
	int open = 0; /* FIXME! iforce->dev.handle->open; */

	FUNC4(intf, NULL);
	if (iforce) {
		iforce->usbdev = NULL;
		FUNC1(iforce->dev);

		if (!open) {
			FUNC0(iforce);
			FUNC2(iforce);
		}
	}
}