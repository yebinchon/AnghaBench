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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct amradio_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMRADIO_START ; 
 int FUNC0 (struct amradio_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct amradio_device* FUNC3 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC4(struct usb_interface *intf)
{
	struct amradio_device *radio = FUNC3(intf);
	int retval;

	retval = FUNC0(radio, AMRADIO_START);
	if (retval < 0)
		FUNC2(&intf->dev, "amradio_start failed\n");

	FUNC1(&intf->dev, "coming out of suspend..\n");

	return 0;
}