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
struct hid_device_id {int /*<<< orphan*/  driver_data; } ;
struct hid_device {int /*<<< orphan*/  dev; } ;
struct a4tech_sc {int /*<<< orphan*/  quirks; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HID_CONNECT_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct hid_device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct hid_device*,struct a4tech_sc*) ; 
 int /*<<< orphan*/  FUNC4 (struct a4tech_sc*) ; 
 struct a4tech_sc* FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct hid_device *hdev, const struct hid_device_id *id)
{
	struct a4tech_sc *a4;
	int ret;

	a4 = FUNC5(sizeof(*a4), GFP_KERNEL);
	if (a4 == NULL) {
		FUNC0(&hdev->dev, "can't alloc device descriptor\n");
		ret = -ENOMEM;
		goto err_free;
	}

	a4->quirks = id->driver_data;

	FUNC3(hdev, a4);

	ret = FUNC2(hdev);
	if (ret) {
		FUNC0(&hdev->dev, "parse failed\n");
		goto err_free;
	}

	ret = FUNC1(hdev, HID_CONNECT_DEFAULT);
	if (ret) {
		FUNC0(&hdev->dev, "hw start failed\n");
		goto err_free;
	}

	return 0;
err_free:
	FUNC4(a4);
	return ret;
}