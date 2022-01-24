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
struct hci_uart {struct hci_dev* hdev; } ;
struct hci_dev {int /*<<< orphan*/  quirks; int /*<<< orphan*/  owner; int /*<<< orphan*/  destruct; int /*<<< orphan*/  send; int /*<<< orphan*/  flush; int /*<<< orphan*/  close; int /*<<< orphan*/  open; struct hci_uart* driver_data; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HCI_QUIRK_NO_RESET ; 
 int /*<<< orphan*/  HCI_UART ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 struct hci_dev* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 scalar_t__ FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  hci_uart_close ; 
 int /*<<< orphan*/  hci_uart_destruct ; 
 int /*<<< orphan*/  hci_uart_flush ; 
 int /*<<< orphan*/  hci_uart_open ; 
 int /*<<< orphan*/  hci_uart_send_frame ; 
 int /*<<< orphan*/  reset ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct hci_uart *hu)
{
	struct hci_dev *hdev;

	FUNC0("");

	/* Initialize and register HCI device */
	hdev = FUNC2();
	if (!hdev) {
		FUNC1("Can't allocate HCI device");
		return -ENOMEM;
	}

	hu->hdev = hdev;

	hdev->type = HCI_UART;
	hdev->driver_data = hu;

	hdev->open  = hci_uart_open;
	hdev->close = hci_uart_close;
	hdev->flush = hci_uart_flush;
	hdev->send  = hci_uart_send_frame;
	hdev->destruct = hci_uart_destruct;

	hdev->owner = THIS_MODULE;

	if (!reset)
		FUNC5(HCI_QUIRK_NO_RESET, &hdev->quirks);

	if (FUNC4(hdev) < 0) {
		FUNC1("Can't register HCI device");
		FUNC3(hdev);
		return -ENODEV;
	}

	return 0;
}