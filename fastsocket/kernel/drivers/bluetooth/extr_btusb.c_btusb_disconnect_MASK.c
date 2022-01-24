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
struct hci_dev {int dummy; } ;
struct btusb_data {struct usb_interface* isoc; struct usb_interface* intf; struct hci_dev* hdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  btusb_driver ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct usb_interface*) ; 
 struct btusb_data* FUNC6 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct usb_interface *intf)
{
	struct btusb_data *data = FUNC6(intf);
	struct hci_dev *hdev;

	FUNC0("intf %p", intf);

	if (!data)
		return;

	hdev = data->hdev;

	FUNC1(hdev);

	FUNC7(data->intf, NULL);

	if (data->isoc)
		FUNC7(data->isoc, NULL);

	FUNC4(hdev);

	if (intf == data->isoc)
		FUNC5(&btusb_driver, data->intf);
	else if (data->isoc)
		FUNC5(&btusb_driver, data->isoc);

	FUNC2(hdev);

	FUNC3(hdev);
}