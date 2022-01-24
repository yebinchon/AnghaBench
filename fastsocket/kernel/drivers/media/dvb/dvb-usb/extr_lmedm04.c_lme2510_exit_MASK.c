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
struct dvb_usb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (struct dvb_usb_device*) ; 
 struct dvb_usb_device* FUNC3 (struct usb_interface*) ; 

void FUNC4(struct usb_interface *intf)
{
	struct dvb_usb_device *d = FUNC3(intf);
	void *usb_buffer;

	if (d != NULL) {
		usb_buffer = FUNC2(d);
		FUNC0(intf);
		FUNC1(usb_buffer);
	}
}