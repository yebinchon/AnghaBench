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
struct usbhid_device {TYPE_1__* intf; } ;
struct hid_device {struct usbhid_device* driver_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*) ; 
 scalar_t__ FUNC2 (struct hid_device*) ; 

__attribute__((used)) static void FUNC3(unsigned long _hid)
{
	struct hid_device *hid = (struct hid_device *) _hid;
	struct usbhid_device *usbhid = hid->driver_data;

	FUNC0(&usbhid->intf->dev, "retrying intr urb\n");
	if (FUNC2(hid))
		FUNC1(hid);
}