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
struct TYPE_2__ {int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  flags; } ;
struct hif_device_usb {TYPE_1__ tx; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  HIF_USB_START ; 
 int /*<<< orphan*/  HIF_USB_TX_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC2(void *hif_handle)
{
	struct hif_device_usb *hif_dev = (struct hif_device_usb *)hif_handle;
	unsigned long flags;

	hif_dev->flags |= HIF_USB_START;

	FUNC0(&hif_dev->tx.tx_lock, flags);
	hif_dev->tx.flags &= ~HIF_USB_TX_STOP;
	FUNC1(&hif_dev->tx.tx_lock, flags);
}