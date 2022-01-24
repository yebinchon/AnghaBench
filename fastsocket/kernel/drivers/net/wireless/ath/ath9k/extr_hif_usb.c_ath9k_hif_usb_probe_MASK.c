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
struct usb_interface {int dummy; } ;
struct usb_device_id {scalar_t__ driver_info; } ;
struct usb_device {int reset_resume; int /*<<< orphan*/  dev; } ;
struct hif_device_usb {int /*<<< orphan*/  fw_name; struct usb_device* udev; int /*<<< orphan*/  fw_done; struct usb_device_id const* usb_device_id; struct usb_interface* interface; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FIRMWARE_AR7010_1_1 ; 
 int /*<<< orphan*/  FIRMWARE_AR9271 ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ STORAGE_DEVICE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  ath9k_hif_usb_firmware_cb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (struct hif_device_usb*) ; 
 struct hif_device_usb* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct hif_device_usb*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_interface*,struct hif_device_usb*) ; 

__attribute__((used)) static int FUNC12(struct usb_interface *interface,
			       const struct usb_device_id *id)
{
	struct usb_device *udev = FUNC4(interface);
	struct hif_device_usb *hif_dev;
	int ret = 0;

	if (id->driver_info == STORAGE_DEVICE)
		return FUNC8(interface);

	hif_dev = FUNC6(sizeof(struct hif_device_usb), GFP_KERNEL);
	if (!hif_dev) {
		ret = -ENOMEM;
		goto err_alloc;
	}

	FUNC9(udev);

	hif_dev->udev = udev;
	hif_dev->interface = interface;
	hif_dev->usb_device_id = id;
#ifdef CONFIG_PM
	udev->reset_resume = 1;
#endif
	FUNC11(interface, hif_dev);

	FUNC3(&hif_dev->fw_done);

	/* Find out which firmware to load */

	if (FUNC0(id->driver_info))
		hif_dev->fw_name = FIRMWARE_AR7010_1_1;
	else
		hif_dev->fw_name = FIRMWARE_AR9271;

	ret = FUNC7(THIS_MODULE, true, hif_dev->fw_name,
				      &hif_dev->udev->dev, GFP_KERNEL,
				      hif_dev, ath9k_hif_usb_firmware_cb);
	if (ret) {
		FUNC1(&hif_dev->udev->dev,
			"ath9k_htc: Async request for firmware %s failed\n",
			hif_dev->fw_name);
		goto err_fw_req;
	}

	FUNC2(&hif_dev->udev->dev, "ath9k_htc: Firmware %s requested\n",
		 hif_dev->fw_name);

	return 0;

err_fw_req:
	FUNC11(interface, NULL);
	FUNC5(hif_dev);
	FUNC10(udev);
err_alloc:
	return ret;
}