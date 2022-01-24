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
struct zd_usb_tx {scalar_t__ submitted_urbs; int /*<<< orphan*/  lock; scalar_t__ stopped; } ;
struct zd_usb {struct zd_usb_tx tx; } ;

/* Variables and functions */
 scalar_t__ ZD_USB_TX_LOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct zd_usb*) ; 

__attribute__((used)) static void FUNC4(struct zd_usb *usb)
{
	struct zd_usb_tx *tx = &usb->tx;
	unsigned long flags;

	FUNC1(&tx->lock, flags);
	--tx->submitted_urbs;
	if (tx->stopped && tx->submitted_urbs <= ZD_USB_TX_LOW) {
		FUNC0(FUNC3(usb));
		tx->stopped = 0;
	}
	FUNC2(&tx->lock, flags);
}