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
struct phy_device {scalar_t__ state; scalar_t__ irq; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ PHY_HALTED ; 
 int /*<<< orphan*/  PHY_INTERRUPT_DISABLED ; 
 scalar_t__ PHY_POLL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct phy_device*,int /*<<< orphan*/ ) ; 

void FUNC4(struct phy_device *phydev)
{
	FUNC0(&phydev->lock);

	if (PHY_HALTED == phydev->state)
		goto out_unlock;

	if (phydev->irq != PHY_POLL) {
		/* Disable PHY Interrupts */
		FUNC3(phydev, PHY_INTERRUPT_DISABLED);

		/* Clear any pending interrupts */
		FUNC2(phydev);
	}

	phydev->state = PHY_HALTED;

out_unlock:
	FUNC1(&phydev->lock);

	/*
	 * Cannot call flush_scheduled_work() here as desired because
	 * of rtnl_lock(), but PHY_HALTED shall guarantee phy_change()
	 * will not reenable interrupts.
	 */
}