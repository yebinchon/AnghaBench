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
struct ethtool_eee {scalar_t__ advertised; scalar_t__ tx_lpi_timer; } ;
struct tg3 {int phy_flags; int /*<<< orphan*/  dev; struct ethtool_eee eee; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 scalar_t__ TG3_CPMU_DBTMR1_LNKIDLE_MAX ; 
 int TG3_PHYFLG_EEE_CAP ; 
 int TG3_PHYFLG_USER_CONFIGURED ; 
 struct tg3* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC5 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC6 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC7 (struct tg3*) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev, struct ethtool_eee *edata)
{
	struct tg3 *tp = FUNC0(dev);

	if (!(tp->phy_flags & TG3_PHYFLG_EEE_CAP)) {
		FUNC1(tp->dev, "Board does not support EEE!\n");
		return -EOPNOTSUPP;
	}

	if (edata->advertised != tp->eee.advertised) {
		FUNC1(tp->dev,
			    "Direct manipulation of EEE advertisement is not supported\n");
		return -EINVAL;
	}

	if (edata->tx_lpi_timer > TG3_CPMU_DBTMR1_LNKIDLE_MAX) {
		FUNC1(tp->dev,
			    "Maximal Tx Lpi timer supported is %#x(u)\n",
			    TG3_CPMU_DBTMR1_LNKIDLE_MAX);
		return -EINVAL;
	}

	tp->eee = *edata;

	tp->phy_flags |= TG3_PHYFLG_USER_CONFIGURED;
	FUNC7(tp);

	if (FUNC2(tp->dev)) {
		FUNC3(tp, 0);
		FUNC6(tp);
		FUNC5(tp);
		FUNC4(tp);
	}

	return 0;
}