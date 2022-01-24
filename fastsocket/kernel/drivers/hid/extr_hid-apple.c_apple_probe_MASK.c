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
struct apple_sc {unsigned long quirks; } ;

/* Variables and functions */
 unsigned long APPLE_HIDDEV ; 
 unsigned long APPLE_IGNORE_HIDINPUT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int HID_CONNECT_DEFAULT ; 
 unsigned int HID_CONNECT_HIDDEV_FORCE ; 
 unsigned int HID_CONNECT_HIDINPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct hid_device*,unsigned int) ; 
 int FUNC2 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct hid_device*,struct apple_sc*) ; 
 int /*<<< orphan*/  FUNC4 (struct apple_sc*) ; 
 struct apple_sc* FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct hid_device *hdev,
		const struct hid_device_id *id)
{
	unsigned long quirks = id->driver_data;
	struct apple_sc *asc;
	unsigned int connect_mask = HID_CONNECT_DEFAULT;
	int ret;

	asc = FUNC5(sizeof(*asc), GFP_KERNEL);
	if (asc == NULL) {
		FUNC0(&hdev->dev, "can't alloc apple descriptor\n");
		return -ENOMEM;
	}

	asc->quirks = quirks;

	FUNC3(hdev, asc);

	ret = FUNC2(hdev);
	if (ret) {
		FUNC0(&hdev->dev, "parse failed\n");
		goto err_free;
	}

	if (quirks & APPLE_HIDDEV)
		connect_mask |= HID_CONNECT_HIDDEV_FORCE;
	if (quirks & APPLE_IGNORE_HIDINPUT)
		connect_mask &= ~HID_CONNECT_HIDINPUT;

	ret = FUNC1(hdev, connect_mask);
	if (ret) {
		FUNC0(&hdev->dev, "hw start failed\n");
		goto err_free;
	}

	return 0;
err_free:
	FUNC4(asc);
	return ret;
}