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
struct wacom_data {int /*<<< orphan*/  features; } ;
struct hid_device_id {int dummy; } ;
struct hid_device {int product; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HID_CONNECT_DEFAULT ; 
#define  USB_DEVICE_ID_WACOM_GRAPHIRE_BLUETOOTH 129 
#define  USB_DEVICE_ID_WACOM_INTUOS4_BLUETOOTH 128 
 int /*<<< orphan*/  dev_attr_speed ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct hid_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct hid_device*,struct wacom_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct wacom_data*) ; 
 struct wacom_data* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct hid_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct hid_device*) ; 

__attribute__((used)) static int FUNC10(struct hid_device *hdev,
		const struct hid_device_id *id)
{
	struct wacom_data *wdata;
	int ret;

	wdata = FUNC7(sizeof(*wdata), GFP_KERNEL);
	if (wdata == NULL) {
		FUNC0(&hdev->dev, "can't alloc wacom descriptor\n");
		return -ENOMEM;
	}

	FUNC5(hdev, wdata);

	/* Parse the HID report now */
	ret = FUNC4(hdev);
	if (ret) {
		FUNC0(&hdev->dev, "parse failed\n");
		goto err_free;
	}

	ret = FUNC3(hdev, HID_CONNECT_DEFAULT);
	if (ret) {
		FUNC0(&hdev->dev, "hw start failed\n");
		goto err_free;
	}

	ret = FUNC2(&hdev->dev, &dev_attr_speed);
	if (ret)
		FUNC1(&hdev->dev,
			"can't create sysfs speed attribute err: %d\n", ret);

	switch (hdev->product) {
	case USB_DEVICE_ID_WACOM_GRAPHIRE_BLUETOOTH:
		/* Set Wacom mode 2 with high reporting speed */
		FUNC8(hdev, 1);
		break;
	case USB_DEVICE_ID_WACOM_INTUOS4_BLUETOOTH:
		wdata->features = 0;
		FUNC9(hdev);
		break;
	}

	return 0;
err_free:
	FUNC6(wdata);
	return ret;
}