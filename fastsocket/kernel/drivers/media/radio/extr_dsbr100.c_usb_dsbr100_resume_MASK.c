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
struct dsbr100_device {scalar_t__ status; } ;

/* Variables and functions */
 scalar_t__ STARTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct dsbr100_device*) ; 
 struct dsbr100_device* FUNC3 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC4(struct usb_interface *intf)
{
	struct dsbr100_device *radio = FUNC3(intf);
	int retval;

	if (radio->status == STARTED) {
		retval = FUNC2(radio);
		if (retval < 0)
			FUNC1(&intf->dev, "dsbr100_start failed\n");
	}

	FUNC0(&intf->dev, "coming out of suspend..\n");

	return 0;
}