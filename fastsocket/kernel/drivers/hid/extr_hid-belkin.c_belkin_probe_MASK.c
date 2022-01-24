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
struct hid_device_id {unsigned long driver_data; } ;
struct hid_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned long BELKIN_HIDDEV ; 
 int HID_CONNECT_DEFAULT ; 
 int HID_CONNECT_HIDDEV_FORCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct hid_device*,int) ; 
 int FUNC2 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct hid_device*,void*) ; 

__attribute__((used)) static int FUNC4(struct hid_device *hdev, const struct hid_device_id *id)
{
	unsigned long quirks = id->driver_data;
	int ret;

	FUNC3(hdev, (void *)quirks);

	ret = FUNC2(hdev);
	if (ret) {
		FUNC0(&hdev->dev, "parse failed\n");
		goto err_free;
	}

	ret = FUNC1(hdev, HID_CONNECT_DEFAULT |
		((quirks & BELKIN_HIDDEV) ? HID_CONNECT_HIDDEV_FORCE : 0));
	if (ret) {
		FUNC0(&hdev->dev, "hw start failed\n");
		goto err_free;
	}

	return 0;
err_free:
	return ret;
}