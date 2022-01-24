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
struct dvb_usb_device {TYPE_1__* desc; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dvb_usb_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 struct dvb_usb_device* FUNC2 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_interface*,int /*<<< orphan*/ *) ; 

void FUNC4(struct usb_interface *intf)
{
	struct dvb_usb_device *d = FUNC2(intf);
	const char *name = "generic DVB-USB module";

	FUNC3(intf, NULL);
	if (d != NULL && d->desc != NULL) {
		name = d->desc->name;
		FUNC0(d);
	}
	FUNC1("%s successfully deinitialized and disconnected.", name);

}