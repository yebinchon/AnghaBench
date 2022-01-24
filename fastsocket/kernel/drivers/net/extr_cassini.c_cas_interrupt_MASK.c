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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct cas {int /*<<< orphan*/  lock; int /*<<< orphan*/  napi; scalar_t__ regs; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int INTR_RX_DONE ; 
 int INTR_TX_ALL ; 
 int INTR_TX_INTME ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ REG_INTR_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct cas*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cas*) ; 
 int /*<<< orphan*/  FUNC2 (struct cas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,struct cas*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct cas* FUNC5 (struct net_device*) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *dev_id)
{
	struct net_device *dev = dev_id;
	struct cas *cp = FUNC5(dev);
	unsigned long flags;
	u32 status = FUNC6(cp->regs + REG_INTR_STATUS);

	if (status == 0)
		return IRQ_NONE;

	FUNC7(&cp->lock, flags);
	if (status & (INTR_TX_ALL | INTR_TX_INTME)) {
		FUNC3(dev, cp, status);
		status &= ~(INTR_TX_ALL | INTR_TX_INTME);
	}

	if (status & INTR_RX_DONE) {
#ifdef USE_NAPI
		cas_mask_intr(cp);
		napi_schedule(&cp->napi);
#else
		FUNC2(cp, 0, 0);
#endif
		status &= ~INTR_RX_DONE;
	}

	if (status)
		FUNC0(dev, cp, status);
	FUNC8(&cp->lock, flags);
	return IRQ_HANDLED;
}