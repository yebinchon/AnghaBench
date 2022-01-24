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
struct usbnet {int /*<<< orphan*/  data; } ;
struct usb_interface {int dummy; } ;
struct cdc_state {int /*<<< orphan*/  data; TYPE_1__* ether; } ;
struct TYPE_2__ {int /*<<< orphan*/  iMACAddress; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct usbnet*,struct usb_interface*) ; 
 int FUNC4 (struct usbnet*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct usbnet *dev, struct usb_interface *intf)
{
	int				status;
	struct cdc_state		*info = (void *) &dev->data;

	status = FUNC3(dev, intf);
	if (status < 0)
		return status;

	status = FUNC4(dev, info->ether->iMACAddress);
	if (status < 0) {
		FUNC2(info->data, NULL);
		FUNC1(FUNC0(intf), info->data);
		return status;
	}

	/* FIXME cdc-ether has some multicast code too, though it complains
	 * in routine cases.  info->ether describes the multicast support.
	 * Implement that here, manipulating the cdc filter as needed.
	 */
	return 0;
}