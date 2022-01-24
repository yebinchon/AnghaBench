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
struct zd_usb_tx {scalar_t__ submitted_urbs; int /*<<< orphan*/  lock; int /*<<< orphan*/  submitted_skbs; int /*<<< orphan*/  submitted; int /*<<< orphan*/  enabled; } ;
struct zd_usb {struct zd_usb_tx tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct zd_usb *usb)
{
	struct zd_usb_tx *tx = &usb->tx;
	unsigned long flags;

	FUNC1(&tx->enabled, 0);

	/* kill all submitted tx-urbs */
	FUNC5(&tx->submitted);

	FUNC3(&tx->lock, flags);
	FUNC0(!FUNC2(&tx->submitted_skbs));
	FUNC0(tx->submitted_urbs != 0);
	tx->submitted_urbs = 0;
	FUNC4(&tx->lock, flags);

	/* The stopped state is ignored, relying on ieee80211_wake_queues()
	 * in a potentionally following zd_usb_enable_tx().
	 */
}