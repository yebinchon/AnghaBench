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
struct tty_struct {int dummy; } ;
struct hci_uart {TYPE_1__* proto; int /*<<< orphan*/  flags; int /*<<< orphan*/ * tx_skb; struct tty_struct* tty; } ;
struct hci_dev {scalar_t__ driver_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* flush ) (struct hci_uart*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_dev*,struct tty_struct*) ; 
 int /*<<< orphan*/  HCI_UART_PROTO_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_uart*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*) ; 

__attribute__((used)) static int FUNC6(struct hci_dev *hdev)
{
	struct hci_uart *hu  = (struct hci_uart *) hdev->driver_data;
	struct tty_struct *tty = hu->tty;

	FUNC0("hdev %p tty %p", hdev, tty);

	if (hu->tx_skb) {
		FUNC1(hu->tx_skb); hu->tx_skb = NULL;
	}

	/* Flush any pending characters in the driver and discipline. */
	FUNC5(tty);
	FUNC4(tty);

	if (FUNC3(HCI_UART_PROTO_SET, &hu->flags))
		hu->proto->flush(hu);

	return 0;
}