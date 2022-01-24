#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct hci_dev {int /*<<< orphan*/  owner; int /*<<< orphan*/  ioctl; int /*<<< orphan*/  destruct; int /*<<< orphan*/  send; int /*<<< orphan*/  flush; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_3__* driver_data; int /*<<< orphan*/  type; } ;
struct TYPE_7__ {int ri_latch; struct hci_dev* hdev; int /*<<< orphan*/  lock; TYPE_2__* p_dev; int /*<<< orphan*/  tx_state; int /*<<< orphan*/ * rx_skb; int /*<<< orphan*/  rx_count; int /*<<< orphan*/  rx_state; int /*<<< orphan*/  txq; } ;
typedef  TYPE_3__ dtl1_info_t ;
struct TYPE_5__ {unsigned int BasePort1; } ;
struct TYPE_6__ {TYPE_1__ io; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HCI_PCCARD ; 
 int /*<<< orphan*/  NSHL ; 
 int /*<<< orphan*/  RECV_WAIT_NSH ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 scalar_t__ UART_IER ; 
 int UART_IER_RDI ; 
 int UART_IER_RLSI ; 
 int UART_IER_THRI ; 
 scalar_t__ UART_LCR ; 
 int UART_LCR_WLEN8 ; 
 scalar_t__ UART_MCR ; 
 int UART_MCR_DTR ; 
 int UART_MCR_OUT2 ; 
 int UART_MCR_RTS ; 
 scalar_t__ UART_MSR ; 
 int UART_MSR_RI ; 
 int /*<<< orphan*/  XMIT_WAITING ; 
 int /*<<< orphan*/  dtl1_hci_close ; 
 int /*<<< orphan*/  dtl1_hci_destruct ; 
 int /*<<< orphan*/  dtl1_hci_flush ; 
 int /*<<< orphan*/  dtl1_hci_ioctl ; 
 int /*<<< orphan*/  dtl1_hci_open ; 
 int /*<<< orphan*/  dtl1_hci_send_frame ; 
 struct hci_dev* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 scalar_t__ FUNC4 (struct hci_dev*) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC13(dtl1_info_t *info)
{
	unsigned long flags;
	unsigned int iobase = info->p_dev->io.BasePort1;
	struct hci_dev *hdev;

	FUNC10(&(info->lock));

	FUNC9(&(info->txq));

	info->rx_state = RECV_WAIT_NSH;
	info->rx_count = NSHL;
	info->rx_skb = NULL;

	FUNC8(XMIT_WAITING, &(info->tx_state));

	/* Initialize HCI device */
	hdev = FUNC2();
	if (!hdev) {
		FUNC0("Can't allocate HCI device");
		return -ENOMEM;
	}

	info->hdev = hdev;

	hdev->type = HCI_PCCARD;
	hdev->driver_data = info;
	FUNC1(hdev, &info->p_dev->dev);

	hdev->open     = dtl1_hci_open;
	hdev->close    = dtl1_hci_close;
	hdev->flush    = dtl1_hci_flush;
	hdev->send     = dtl1_hci_send_frame;
	hdev->destruct = dtl1_hci_destruct;
	hdev->ioctl    = dtl1_hci_ioctl;

	hdev->owner = THIS_MODULE;

	FUNC11(&(info->lock), flags);

	/* Reset UART */
	FUNC7(0, iobase + UART_MCR);

	/* Turn off interrupts */
	FUNC7(0, iobase + UART_IER);

	/* Initialize UART */
	FUNC7(UART_LCR_WLEN8, iobase + UART_LCR);	/* Reset DLAB */
	FUNC7((UART_MCR_DTR | UART_MCR_RTS | UART_MCR_OUT2), iobase + UART_MCR);

	info->ri_latch = FUNC5(info->p_dev->io.BasePort1 + UART_MSR) & UART_MSR_RI;

	/* Turn on interrupts */
	FUNC7(UART_IER_RLSI | UART_IER_RDI | UART_IER_THRI, iobase + UART_IER);

	FUNC12(&(info->lock), flags);

	/* Timeout before it is safe to send the first HCI packet */
	FUNC6(2000);

	/* Register HCI device */
	if (FUNC4(hdev) < 0) {
		FUNC0("Can't register HCI device");
		info->hdev = NULL;
		FUNC3(hdev);
		return -ENODEV;
	}

	return 0;
}