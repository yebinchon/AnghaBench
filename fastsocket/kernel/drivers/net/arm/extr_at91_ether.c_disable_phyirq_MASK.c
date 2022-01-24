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
struct net_device {int dummy; } ;
struct TYPE_2__ {unsigned int phy_irq_pin; } ;
struct at91_private {scalar_t__ phy_type; int /*<<< orphan*/  lock; int /*<<< orphan*/  phy_address; int /*<<< orphan*/  check_timer; TYPE_1__ board_data; } ;

/* Variables and functions */
 scalar_t__ MII_BCM5221_ID ; 
 int /*<<< orphan*/  MII_BCMINTR_REG ; 
 scalar_t__ MII_DM9161A_ID ; 
 scalar_t__ MII_DM9161_ID ; 
 scalar_t__ MII_DP83848_ID ; 
 int /*<<< orphan*/  MII_DPMICR_REG ; 
 int /*<<< orphan*/  MII_DPMISR_REG ; 
 int /*<<< orphan*/  MII_DSINTR_REG ; 
 int /*<<< orphan*/  MII_ISINTE_REG ; 
 scalar_t__ MII_KS8721_ID ; 
 scalar_t__ MII_LXT971A_ID ; 
 int /*<<< orphan*/  MII_T78Q21INT_REG ; 
 scalar_t__ MII_T78Q21x3_ID ; 
 int /*<<< orphan*/  MII_TPISTATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,struct net_device*) ; 
 struct at91_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC9(struct net_device *dev)
{
	struct at91_private *lp = FUNC4(dev);
	unsigned int dsintr;
	unsigned int irq_number;

	irq_number = lp->board_data.phy_irq_pin;
	if (!irq_number) {
		FUNC0(&lp->check_timer);
		return;
	}

	FUNC6(&lp->lock);
	FUNC2();

	if ((lp->phy_type == MII_DM9161_ID) || (lp->phy_type == MII_DM9161A_ID)) {	/* for Davicom PHY */
		FUNC5(lp->phy_address, MII_DSINTR_REG, &dsintr);
		dsintr = dsintr | 0xf00;			/* set bits 8..11 */
		FUNC8(lp->phy_address, MII_DSINTR_REG, dsintr);
	}
	else if (lp->phy_type == MII_LXT971A_ID) {	/* for Intel PHY */
		FUNC5(lp->phy_address, MII_ISINTE_REG, &dsintr);
		dsintr = dsintr & ~0xf2;			/* clear bits 1, 4..7 */
		FUNC8(lp->phy_address, MII_ISINTE_REG, dsintr);
	}
	else if (lp->phy_type == MII_BCM5221_ID) {	/* for Broadcom PHY */
		FUNC5(lp->phy_address, MII_BCMINTR_REG, &dsintr);
		dsintr = ~(1 << 14);
		FUNC8(lp->phy_address, MII_BCMINTR_REG, dsintr);
	}
	else if (lp->phy_type == MII_KS8721_ID) {	/* for Micrel PHY */
		FUNC5(lp->phy_address, MII_TPISTATUS, &dsintr);
		dsintr = ~((1 << 10) | (1 << 8));
		FUNC8(lp->phy_address, MII_TPISTATUS, dsintr);
	}
	else if (lp->phy_type == MII_T78Q21x3_ID) {	/* for Teridian PHY */
		FUNC5(lp->phy_address, MII_T78Q21INT_REG, &dsintr);
		dsintr = dsintr & ~0x500;			/* clear bits 8, 10 */
		FUNC8(lp->phy_address, MII_T78Q21INT_REG, dsintr);
	}
	else if (lp->phy_type == MII_DP83848_ID) {	/* National Semiconductor DP83848 PHY */
		FUNC5(lp->phy_address, MII_DPMICR_REG, &dsintr);
		dsintr = dsintr & ~0x3;				/* clear bits 0, 1 */
		FUNC8(lp->phy_address, MII_DPMICR_REG, dsintr);
		FUNC5(lp->phy_address, MII_DPMISR_REG, &dsintr);
		dsintr = dsintr & ~0x3c;			/* clear bits 2..5 */
		FUNC8(lp->phy_address, MII_DPMISR_REG, dsintr);
	}

	FUNC1();
	FUNC7(&lp->lock);

	FUNC3(irq_number, dev);			/* Free interrupt handler */
}