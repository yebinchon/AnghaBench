#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int /*<<< orphan*/ * disc_data; } ;
struct hci_uart {TYPE_1__* proto; int /*<<< orphan*/  flags; struct hci_dev* hdev; } ;
struct hci_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* close ) (struct hci_uart*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct tty_struct*) ; 
 int /*<<< orphan*/  HCI_UART_PROTO_SET ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_uart*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct tty_struct *tty)
{
	struct hci_uart *hu = (void *)tty->disc_data;

	FUNC0("tty %p", tty);

	/* Detach from the tty */
	tty->disc_data = NULL;

	if (hu) {
		struct hci_dev *hdev = hu->hdev;

		if (hdev)
			FUNC2(hdev);

		if (FUNC5(HCI_UART_PROTO_SET, &hu->flags)) {
			hu->proto->close(hu);
			FUNC3(hdev);
			FUNC1(hdev);
		}
	}
}