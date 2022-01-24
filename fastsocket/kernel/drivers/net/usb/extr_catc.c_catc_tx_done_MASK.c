#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct urb {int status; int /*<<< orphan*/  actual_length; struct catc* context; } ;
struct catc {int /*<<< orphan*/  tx_lock; TYPE_2__* netdev; int /*<<< orphan*/  flags; scalar_t__ tx_ptr; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx_errors; } ;
struct TYPE_4__ {TYPE_1__ stats; int /*<<< orphan*/  trans_start; } ;

/* Variables and functions */
 int ECONNRESET ; 
 int /*<<< orphan*/  TX_RUNNING ; 
 int FUNC0 (struct catc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct urb *urb)
{
	struct catc *catc = urb->context;
	unsigned long flags;
	int r, status = urb->status;

	if (status == -ECONNRESET) {
		FUNC2("Tx Reset.");
		urb->status = 0;
		catc->netdev->trans_start = jiffies;
		catc->netdev->stats.tx_errors++;
		FUNC1(TX_RUNNING, &catc->flags);
		FUNC3(catc->netdev);
		return;
	}

	if (status) {
		FUNC2("tx_done, status %d, length %d", status, urb->actual_length);
		return;
	}

	FUNC4(&catc->tx_lock, flags);

	if (catc->tx_ptr) {
		r = FUNC0(catc);
		if (FUNC6(r < 0))
			FUNC1(TX_RUNNING, &catc->flags);
	} else {
		FUNC1(TX_RUNNING, &catc->flags);
	}

	FUNC3(catc->netdev);

	FUNC5(&catc->tx_lock, flags);
}