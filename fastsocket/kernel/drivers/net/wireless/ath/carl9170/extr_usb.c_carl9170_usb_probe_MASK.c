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
struct usb_device_id {int /*<<< orphan*/  driver_info; } ;
struct usb_device {int /*<<< orphan*/  dev; } ;
struct ar9170 {struct usb_device* udev; int /*<<< orphan*/  rx_pool_urbs; int /*<<< orphan*/  rx_anch_urbs; int /*<<< orphan*/  rx_work_urbs; int /*<<< orphan*/  tx_anch_urbs; int /*<<< orphan*/  tx_cmd_urbs; int /*<<< orphan*/  usb_tasklet; int /*<<< orphan*/  fw_load_wait; int /*<<< orphan*/  fw_boot_wait; int /*<<< orphan*/  cmd_wait; int /*<<< orphan*/  tx_err; int /*<<< orphan*/  tx_cmd; int /*<<< orphan*/  tx_anch; int /*<<< orphan*/  tx_wait; int /*<<< orphan*/  rx_work; int /*<<< orphan*/  rx_pool; int /*<<< orphan*/  rx_anch; int /*<<< orphan*/  hw; int /*<<< orphan*/  features; struct usb_interface* intf; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARL9170FW_NAME ; 
 int /*<<< orphan*/  CARL9170_STOPPED ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct ar9170*) ; 
 int FUNC1 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ar9170* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct ar9170*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  carl9170_usb_firmware_step2 ; 
 int /*<<< orphan*/  carl9170_usb_tasklet ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC8 (struct usb_interface*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ar9170*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_device*) ; 
 int FUNC12 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_interface*,struct ar9170*) ; 

__attribute__((used)) static int FUNC14(struct usb_interface *intf,
			      const struct usb_device_id *id)
{
	struct ar9170 *ar;
	struct usb_device *udev;
	int err;

	err = FUNC12(FUNC8(intf));
	if (err)
		return err;

	ar = FUNC4(sizeof(*ar));
	if (FUNC0(ar))
		return FUNC1(ar);

	udev = FUNC8(intf);
	FUNC11(udev);
	ar->udev = udev;
	ar->intf = intf;
	ar->features = id->driver_info;

	FUNC13(intf, ar);
	FUNC2(ar->hw, &intf->dev);

	FUNC7(&ar->rx_anch);
	FUNC7(&ar->rx_pool);
	FUNC7(&ar->rx_work);
	FUNC7(&ar->tx_wait);
	FUNC7(&ar->tx_anch);
	FUNC7(&ar->tx_cmd);
	FUNC7(&ar->tx_err);
	FUNC6(&ar->cmd_wait);
	FUNC6(&ar->fw_boot_wait);
	FUNC6(&ar->fw_load_wait);
	FUNC10(&ar->usb_tasklet, carl9170_usb_tasklet,
		     (unsigned long)ar);

	FUNC3(&ar->tx_cmd_urbs, 0);
	FUNC3(&ar->tx_anch_urbs, 0);
	FUNC3(&ar->rx_work_urbs, 0);
	FUNC3(&ar->rx_anch_urbs, 0);
	FUNC3(&ar->rx_pool_urbs, 0);

	FUNC11(ar->udev);

	FUNC5(ar, CARL9170_STOPPED);

	return FUNC9(THIS_MODULE, 1, CARL9170FW_NAME,
		&ar->udev->dev, GFP_KERNEL, ar, carl9170_usb_firmware_step2);
}