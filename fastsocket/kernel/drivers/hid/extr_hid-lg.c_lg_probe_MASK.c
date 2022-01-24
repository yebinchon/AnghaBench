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
struct hid_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  quirks; } ;

/* Variables and functions */
 unsigned int HID_CONNECT_DEFAULT ; 
 unsigned int HID_CONNECT_FF ; 
 int /*<<< orphan*/  HID_QUIRK_NOGET ; 
 unsigned long LG_FF ; 
 unsigned long LG_FF2 ; 
 unsigned long LG_NOGET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct hid_device*,unsigned int) ; 
 int FUNC2 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct hid_device*,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct hid_device*) ; 

__attribute__((used)) static int FUNC6(struct hid_device *hdev, const struct hid_device_id *id)
{
	unsigned long quirks = id->driver_data;
	unsigned int connect_mask = HID_CONNECT_DEFAULT;
	int ret;

	FUNC3(hdev, (void *)quirks);

	if (quirks & LG_NOGET)
		hdev->quirks |= HID_QUIRK_NOGET;

	ret = FUNC2(hdev);
	if (ret) {
		FUNC0(&hdev->dev, "parse failed\n");
		goto err_free;
	}

	if (quirks & (LG_FF | LG_FF2))
		connect_mask &= ~HID_CONNECT_FF;

	ret = FUNC1(hdev, connect_mask);
	if (ret) {
		FUNC0(&hdev->dev, "hw start failed\n");
		goto err_free;
	}

	if (quirks & LG_FF)
		FUNC5(hdev);
	if (quirks & LG_FF2)
		FUNC4(hdev);

	return 0;
err_free:
	return ret;
}