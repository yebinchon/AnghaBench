#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {TYPE_1__* ops; int /*<<< orphan*/  flags; } ;
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct hci_uart {int /*<<< orphan*/  tx_state; struct sk_buff* tx_skb; struct hci_dev* hdev; struct tty_struct* tty; } ;
struct TYPE_5__ {int byte_tx; } ;
struct hci_dev {TYPE_2__ stat; } ;
struct TYPE_6__ {int /*<<< orphan*/  pkt_type; } ;
struct TYPE_4__ {int (* write ) (struct tty_struct*,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  HCI_UART_SENDING ; 
 int /*<<< orphan*/  HCI_UART_TX_WAKEUP ; 
 int /*<<< orphan*/  TTY_DO_WRITE_WAKEUP ; 
 TYPE_3__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC3 (struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_uart*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int FUNC8 (struct tty_struct*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC11(struct hci_uart *hu)
{
	struct tty_struct *tty = hu->tty;
	struct hci_dev *hdev = hu->hdev;
	struct sk_buff *skb;

	if (FUNC9(HCI_UART_SENDING, &hu->tx_state)) {
		FUNC6(HCI_UART_TX_WAKEUP, &hu->tx_state);
		return 0;
	}

	FUNC0("");

restart:
	FUNC2(HCI_UART_TX_WAKEUP, &hu->tx_state);

	while ((skb = FUNC3(hu))) {
		int len;

		FUNC6(TTY_DO_WRITE_WAKEUP, &tty->flags);
		len = tty->ops->write(tty, skb->data, skb->len);
		hdev->stat.byte_tx += len;

		FUNC7(skb, len);
		if (skb->len) {
			hu->tx_skb = skb;
			break;
		}

		FUNC4(hu, FUNC1(skb)->pkt_type);
		FUNC5(skb);
	}

	if (FUNC10(HCI_UART_TX_WAKEUP, &hu->tx_state))
		goto restart;

	FUNC2(HCI_UART_SENDING, &hu->tx_state);
	return 0;
}