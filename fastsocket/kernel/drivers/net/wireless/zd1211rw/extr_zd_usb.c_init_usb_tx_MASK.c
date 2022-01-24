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
struct zd_usb_tx {int /*<<< orphan*/  watchdog_work; scalar_t__ watchdog_enabled; scalar_t__ submitted_urbs; int /*<<< orphan*/  submitted; int /*<<< orphan*/  submitted_skbs; scalar_t__ stopped; int /*<<< orphan*/  enabled; int /*<<< orphan*/  lock; } ;
struct zd_usb {struct zd_usb_tx tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zd_tx_watchdog_handler ; 

__attribute__((used)) static inline void FUNC5(struct zd_usb *usb)
{
	struct zd_usb_tx *tx = &usb->tx;

	FUNC4(&tx->lock);
	FUNC1(&tx->enabled, 0);
	tx->stopped = 0;
	FUNC3(&tx->submitted_skbs);
	FUNC2(&tx->submitted);
	tx->submitted_urbs = 0;
	tx->watchdog_enabled = 0;
	FUNC0(&tx->watchdog_work, zd_tx_watchdog_handler);
}