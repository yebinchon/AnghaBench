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
struct phy_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  irq_disable; int /*<<< orphan*/  phy_queue; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct phy_device*) ; 
 int FUNC4 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct phy_device*) ; 

int FUNC6(struct phy_device *phydev)
{
	int err;

	err = FUNC4(phydev);

	if (err)
		FUNC5(phydev);

	FUNC3(phydev->irq, phydev);

	/*
	 * Cannot call flush_scheduled_work() here as desired because
	 * of rtnl_lock(), but we do not really care about what would
	 * be done, except from enable_irq(), so cancel any work
	 * possibly pending and take care of the matter below.
	 */
	FUNC1(&phydev->phy_queue);
	/*
	 * If work indeed has been cancelled, disable_irq() will have
	 * been left unbalanced from phy_interrupt() and enable_irq()
	 * has to be called so that other devices on the line work.
	 */
	while (FUNC0(&phydev->irq_disable) >= 0)
		FUNC2(phydev->irq);

	return err;
}