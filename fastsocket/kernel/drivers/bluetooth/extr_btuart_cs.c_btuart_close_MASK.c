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
struct hci_dev {int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int /*<<< orphan*/  lock; struct hci_dev* hdev; TYPE_2__* p_dev; } ;
typedef  TYPE_3__ btuart_info_t ;
struct TYPE_5__ {unsigned int BasePort1; } ;
struct TYPE_6__ {TYPE_1__ io; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 scalar_t__ UART_IER ; 
 scalar_t__ UART_MCR ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 scalar_t__ FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(btuart_info_t *info)
{
	unsigned long flags;
	unsigned int iobase = info->p_dev->io.BasePort1;
	struct hci_dev *hdev = info->hdev;

	if (!hdev)
		return -ENODEV;

	FUNC1(hdev);

	FUNC5(&(info->lock), flags);

	/* Reset UART */
	FUNC4(0, iobase + UART_MCR);

	/* Turn off interrupts */
	FUNC4(0, iobase + UART_IER);

	FUNC6(&(info->lock), flags);

	if (FUNC3(hdev) < 0)
		FUNC0("Can't unregister HCI device %s", hdev->name);

	FUNC2(hdev);

	return 0;
}