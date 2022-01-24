#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int /*<<< orphan*/  dev; TYPE_2__* cur_altsetting; } ;
struct usb_device_id {int dummy; } ;
struct hci_dev {int /*<<< orphan*/  quirks; int /*<<< orphan*/  owner; int /*<<< orphan*/  destruct; int /*<<< orphan*/  send; int /*<<< orphan*/  flush; int /*<<< orphan*/  close; int /*<<< orphan*/  open; struct bpa10x_data* driver_data; int /*<<< orphan*/  type; } ;
struct bpa10x_data {struct hci_dev* hdev; int /*<<< orphan*/  rx_anchor; int /*<<< orphan*/  tx_anchor; int /*<<< orphan*/  udev; } ;
struct TYPE_3__ {scalar_t__ bInterfaceNumber; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct usb_interface*,struct usb_device_id const*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HCI_QUIRK_NO_RESET ; 
 int /*<<< orphan*/  HCI_USB ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  bpa10x_close ; 
 int /*<<< orphan*/  bpa10x_destruct ; 
 int /*<<< orphan*/  bpa10x_flush ; 
 int /*<<< orphan*/  bpa10x_open ; 
 int /*<<< orphan*/  bpa10x_send_frame ; 
 struct hci_dev* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC7 (struct bpa10x_data*) ; 
 struct bpa10x_data* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_interface*,struct bpa10x_data*) ; 

__attribute__((used)) static int FUNC11(struct usb_interface *intf, const struct usb_device_id *id)
{
	struct bpa10x_data *data;
	struct hci_dev *hdev;
	int err;

	FUNC0("intf %p id %p", intf, id);

	if (intf->cur_altsetting->desc.bInterfaceNumber != 0)
		return -ENODEV;

	data = FUNC8(sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->udev = FUNC6(intf);

	FUNC5(&data->tx_anchor);
	FUNC5(&data->rx_anchor);

	hdev = FUNC2();
	if (!hdev) {
		FUNC7(data);
		return -ENOMEM;
	}

	hdev->type = HCI_USB;
	hdev->driver_data = data;

	data->hdev = hdev;

	FUNC1(hdev, &intf->dev);

	hdev->open     = bpa10x_open;
	hdev->close    = bpa10x_close;
	hdev->flush    = bpa10x_flush;
	hdev->send     = bpa10x_send_frame;
	hdev->destruct = bpa10x_destruct;

	hdev->owner = THIS_MODULE;

	FUNC9(HCI_QUIRK_NO_RESET, &hdev->quirks);

	err = FUNC4(hdev);
	if (err < 0) {
		FUNC3(hdev);
		FUNC7(data);
		return err;
	}

	FUNC10(intf, data);

	return 0;
}