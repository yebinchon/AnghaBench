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
struct TYPE_2__ {int /*<<< orphan*/  rx_irq; int /*<<< orphan*/  tx_irq; } ;
struct ldc_channel {scalar_t__ state; int /*<<< orphan*/  lock; TYPE_1__ cfg; int /*<<< orphan*/  flags; int /*<<< orphan*/  id; int /*<<< orphan*/  hs_state; int /*<<< orphan*/  tx_head; int /*<<< orphan*/  tx_acked; int /*<<< orphan*/  chan_state; int /*<<< orphan*/  tx_tail; int /*<<< orphan*/  rx_num_entries; int /*<<< orphan*/  rx_ra; int /*<<< orphan*/  tx_num_entries; int /*<<< orphan*/  tx_ra; int /*<<< orphan*/  tx_irq_name; int /*<<< orphan*/  rx_irq_name; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int IRQF_DISABLED ; 
 int IRQF_SAMPLE_RANDOM ; 
 int /*<<< orphan*/  LDC_FLAG_REGISTERED_IRQS ; 
 int /*<<< orphan*/  LDC_FLAG_REGISTERED_QUEUES ; 
 int /*<<< orphan*/  LDC_HS_OPEN ; 
 int /*<<< orphan*/  LDC_IRQ_NAME_MAX ; 
 int /*<<< orphan*/  LDC_STATE_BOUND ; 
 scalar_t__ LDC_STATE_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ldc_channel*) ; 
 int /*<<< orphan*/  ldc_rx ; 
 int /*<<< orphan*/  FUNC2 (struct ldc_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ldc_tx ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct ldc_channel*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned long FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(struct ldc_channel *lp, const char *name)
{
	unsigned long hv_err, flags;
	int err = -EINVAL;

	if (!name ||
	    (lp->state != LDC_STATE_INIT))
		return -EINVAL;

	FUNC4(lp->rx_irq_name, LDC_IRQ_NAME_MAX, "%s RX", name);
	FUNC4(lp->tx_irq_name, LDC_IRQ_NAME_MAX, "%s TX", name);

	err = FUNC3(lp->cfg.rx_irq, ldc_rx,
			  IRQF_SAMPLE_RANDOM | IRQF_DISABLED,
			  lp->rx_irq_name, lp);
	if (err)
		return err;

	err = FUNC3(lp->cfg.tx_irq, ldc_tx,
			  IRQF_SAMPLE_RANDOM | IRQF_DISABLED,
			  lp->tx_irq_name, lp);
	if (err) {
		FUNC1(lp->cfg.rx_irq, lp);
		return err;
	}


	FUNC5(&lp->lock, flags);

	FUNC0(lp->cfg.rx_irq);
	FUNC0(lp->cfg.tx_irq);

	lp->flags |= LDC_FLAG_REGISTERED_IRQS;

	err = -ENODEV;
	hv_err = FUNC9(lp->id, 0, 0);
	if (hv_err)
		goto out_free_irqs;

	hv_err = FUNC9(lp->id, lp->tx_ra, lp->tx_num_entries);
	if (hv_err)
		goto out_free_irqs;

	hv_err = FUNC7(lp->id, 0, 0);
	if (hv_err)
		goto out_unmap_tx;

	hv_err = FUNC7(lp->id, lp->rx_ra, lp->rx_num_entries);
	if (hv_err)
		goto out_unmap_tx;

	lp->flags |= LDC_FLAG_REGISTERED_QUEUES;

	hv_err = FUNC8(lp->id,
					&lp->tx_head,
					&lp->tx_tail,
					&lp->chan_state);
	err = -EBUSY;
	if (hv_err)
		goto out_unmap_rx;

	lp->tx_acked = lp->tx_head;

	lp->hs_state = LDC_HS_OPEN;
	FUNC2(lp, LDC_STATE_BOUND);

	FUNC6(&lp->lock, flags);

	return 0;

out_unmap_rx:
	lp->flags &= ~LDC_FLAG_REGISTERED_QUEUES;
	FUNC7(lp->id, 0, 0);

out_unmap_tx:
	FUNC9(lp->id, 0, 0);

out_free_irqs:
	lp->flags &= ~LDC_FLAG_REGISTERED_IRQS;
	FUNC1(lp->cfg.tx_irq, lp);
	FUNC1(lp->cfg.rx_irq, lp);

	FUNC6(&lp->lock, flags);

	return err;
}