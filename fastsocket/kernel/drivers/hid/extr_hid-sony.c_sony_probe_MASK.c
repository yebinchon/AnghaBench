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
struct sony_sc {unsigned long quirks; } ;
struct hid_device_id {unsigned long driver_data; } ;
struct hid_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HID_CONNECT_DEFAULT ; 
 int HID_CONNECT_HIDDEV_FORCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct hid_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hid_device*) ; 
 int FUNC3 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct hid_device*,struct sony_sc*) ; 
 int /*<<< orphan*/  FUNC5 (struct sony_sc*) ; 
 struct sony_sc* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct hid_device*) ; 

__attribute__((used)) static int FUNC8(struct hid_device *hdev, const struct hid_device_id *id)
{
	int ret;
	unsigned long quirks = id->driver_data;
	struct sony_sc *sc;

	sc = FUNC6(sizeof(*sc), GFP_KERNEL);
	if (sc == NULL) {
		FUNC0(&hdev->dev, "can't alloc apple descriptor\n");
		return -ENOMEM;
	}

	sc->quirks = quirks;
	FUNC4(hdev, sc);

	ret = FUNC3(hdev);
	if (ret) {
		FUNC0(&hdev->dev, "parse failed\n");
		goto err_free;
	}

	ret = FUNC1(hdev, HID_CONNECT_DEFAULT |
			HID_CONNECT_HIDDEV_FORCE);
	if (ret) {
		FUNC0(&hdev->dev, "hw start failed\n");
		goto err_free;
	}

	ret = FUNC7(hdev);
	if (ret < 0)
		goto err_stop;

	return 0;
err_stop:
	FUNC2(hdev);
err_free:
	FUNC5(sc);
	return ret;
}