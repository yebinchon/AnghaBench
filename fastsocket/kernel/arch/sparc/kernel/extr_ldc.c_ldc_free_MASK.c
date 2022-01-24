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
struct TYPE_2__ {int /*<<< orphan*/  tx_irq; int /*<<< orphan*/  rx_irq; } ;
struct ldc_channel {int flags; struct ldc_channel* mssbuf; int /*<<< orphan*/  list; int /*<<< orphan*/  rx_base; int /*<<< orphan*/  rx_num_entries; int /*<<< orphan*/  tx_base; int /*<<< orphan*/  tx_num_entries; int /*<<< orphan*/  id; TYPE_1__ cfg; } ;

/* Variables and functions */
 int LDC_FLAG_ALLOCED_QUEUES ; 
 int LDC_FLAG_REGISTERED_IRQS ; 
 int LDC_FLAG_REGISTERED_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ldc_channel*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ldc_channel*) ; 
 int /*<<< orphan*/  FUNC4 (struct ldc_channel*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7(struct ldc_channel *lp)
{
	if (lp->flags & LDC_FLAG_REGISTERED_IRQS) {
		FUNC0(lp->cfg.rx_irq, lp);
		FUNC0(lp->cfg.tx_irq, lp);
	}

	if (lp->flags & LDC_FLAG_REGISTERED_QUEUES) {
		FUNC6(lp->id, 0, 0);
		FUNC5(lp->id, 0, 0);
		lp->flags &= ~LDC_FLAG_REGISTERED_QUEUES;
	}
	if (lp->flags & LDC_FLAG_ALLOCED_QUEUES) {
		FUNC1(lp->tx_num_entries, lp->tx_base);
		FUNC1(lp->rx_num_entries, lp->rx_base);
		lp->flags &= ~LDC_FLAG_ALLOCED_QUEUES;
	}

	FUNC2(&lp->list);

	FUNC3(lp->mssbuf);

	FUNC4(lp);

	FUNC3(lp);
}