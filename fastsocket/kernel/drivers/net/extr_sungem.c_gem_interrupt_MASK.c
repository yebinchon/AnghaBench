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
typedef  scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct gem {int /*<<< orphan*/  lock; int /*<<< orphan*/  napi; scalar_t__ status; scalar_t__ regs; int /*<<< orphan*/  running; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ GREG_STAT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct gem*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct gem* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct net_device *dev = dev_id;
	struct gem *gp = FUNC4(dev);
	unsigned long flags;

	/* Swallow interrupts when shutting the chip down, though
	 * that shouldn't happen, we should have done free_irq() at
	 * this point...
	 */
	if (!gp->running)
		return IRQ_HANDLED;

	FUNC6(&gp->lock, flags);

	if (FUNC3(&gp->napi)) {
		u32 gem_status = FUNC5(gp->regs + GREG_STAT);

		if (gem_status == 0) {
			FUNC2(&gp->napi);
			FUNC7(&gp->lock, flags);
			return IRQ_NONE;
		}
		gp->status = gem_status;
		FUNC1(gp);
		FUNC0(&gp->napi);
	}

	FUNC7(&gp->lock, flags);

	/* If polling was disabled at the time we received that
	 * interrupt, we may return IRQ_HANDLED here while we
	 * should return IRQ_NONE. No big deal...
	 */
	return IRQ_HANDLED;
}