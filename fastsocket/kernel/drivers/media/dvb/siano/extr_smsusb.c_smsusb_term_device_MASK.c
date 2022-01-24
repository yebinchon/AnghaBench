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
struct smsusb_device_t {scalar_t__ coredev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct smsusb_device_t*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct smsusb_device_t*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct smsusb_device_t*) ; 
 struct smsusb_device_t* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct usb_interface *intf)
{
	struct smsusb_device_t *dev = FUNC4(intf);

	if (dev) {
		FUNC3(dev);

		/* unregister from smscore */
		if (dev->coredev)
			FUNC2(dev->coredev);

		FUNC0(dev);

		FUNC1("device %p destroyed", dev);
	}

	FUNC5(intf, NULL);
}