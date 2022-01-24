#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct hci_dev {int /*<<< orphan*/  owner; int /*<<< orphan*/  ioctl; int /*<<< orphan*/  destruct; int /*<<< orphan*/  send; int /*<<< orphan*/  flush; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_3__* driver_data; int /*<<< orphan*/  type; } ;
struct TYPE_8__ {struct hci_dev* hdev; int /*<<< orphan*/  lock; TYPE_2__* p_dev; int /*<<< orphan*/ * rx_skb; scalar_t__ rx_count; int /*<<< orphan*/  rx_state; int /*<<< orphan*/  txq; } ;
typedef  TYPE_3__ btuart_info_t ;
struct TYPE_6__ {unsigned int BasePort1; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; TYPE_1__ io; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DEFAULT_BAUD_RATE ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HCI_PCCARD ; 
 int /*<<< orphan*/  RECV_WAIT_PACKET_TYPE ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 scalar_t__ UART_IER ; 
 scalar_t__ UART_LCR ; 
 int UART_LCR_WLEN8 ; 
 scalar_t__ UART_MCR ; 
 int UART_MCR_DTR ; 
 int UART_MCR_OUT2 ; 
 int UART_MCR_RTS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  btuart_hci_close ; 
 int /*<<< orphan*/  btuart_hci_destruct ; 
 int /*<<< orphan*/  btuart_hci_flush ; 
 int /*<<< orphan*/  btuart_hci_ioctl ; 
 int /*<<< orphan*/  btuart_hci_open ; 
 int /*<<< orphan*/  btuart_hci_send_frame ; 
 struct hci_dev* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 scalar_t__ FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC12(btuart_info_t *info)
{
	unsigned long flags;
	unsigned int iobase = info->p_dev->io.BasePort1;
	struct hci_dev *hdev;

	FUNC9(&(info->lock));

	FUNC8(&(info->txq));

	info->rx_state = RECV_WAIT_PACKET_TYPE;
	info->rx_count = 0;
	info->rx_skb = NULL;

	/* Initialize HCI device */
	hdev = FUNC3();
	if (!hdev) {
		FUNC0("Can't allocate HCI device");
		return -ENOMEM;
	}

	info->hdev = hdev;

	hdev->type = HCI_PCCARD;
	hdev->driver_data = info;
	FUNC1(hdev, &info->p_dev->dev);

	hdev->open     = btuart_hci_open;
	hdev->close    = btuart_hci_close;
	hdev->flush    = btuart_hci_flush;
	hdev->send     = btuart_hci_send_frame;
	hdev->destruct = btuart_hci_destruct;
	hdev->ioctl    = btuart_hci_ioctl;

	hdev->owner = THIS_MODULE;

	FUNC10(&(info->lock), flags);

	/* Reset UART */
	FUNC7(0, iobase + UART_MCR);

	/* Turn off interrupts */
	FUNC7(0, iobase + UART_IER);

	/* Initialize UART */
	FUNC7(UART_LCR_WLEN8, iobase + UART_LCR);	/* Reset DLAB */
	FUNC7((UART_MCR_DTR | UART_MCR_RTS | UART_MCR_OUT2), iobase + UART_MCR);

	/* Turn on interrupts */
	// outb(UART_IER_RLSI | UART_IER_RDI | UART_IER_THRI, iobase + UART_IER);

	FUNC11(&(info->lock), flags);

	FUNC2(info, DEFAULT_BAUD_RATE);

	/* Timeout before it is safe to send the first HCI packet */
	FUNC6(1000);

	/* Register HCI device */
	if (FUNC5(hdev) < 0) {
		FUNC0("Can't register HCI device");
		info->hdev = NULL;
		FUNC4(hdev);
		return -ENODEV;
	}

	return 0;
}