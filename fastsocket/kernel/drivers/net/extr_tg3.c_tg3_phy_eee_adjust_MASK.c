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
typedef  int u32 ;
struct TYPE_4__ {scalar_t__ eee_active; } ;
struct TYPE_3__ {scalar_t__ autoneg; scalar_t__ active_duplex; scalar_t__ active_speed; } ;
struct tg3 {int phy_flags; int setlpicnt; TYPE_2__ eee; TYPE_1__ link_config; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_ENABLE ; 
 scalar_t__ DUPLEX_FULL ; 
 int /*<<< orphan*/  MII_TG3_DSP_TAP26 ; 
 scalar_t__ SPEED_100 ; 
 scalar_t__ SPEED_1000 ; 
 int TG3_CPMU_EEEMD_LPI_ENABLE ; 
 int /*<<< orphan*/  TG3_CPMU_EEE_CTRL ; 
 int TG3_CPMU_EEE_CTRL_EXIT_16_5_US ; 
 int TG3_CPMU_EEE_CTRL_EXIT_36_US ; 
 int /*<<< orphan*/  TG3_CPMU_EEE_MODE ; 
 int TG3_PHYFLG_EEE_CAP ; 
 int /*<<< orphan*/  FUNC0 (struct tg3*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tg3*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tg3*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct tg3 *tp, bool current_link_up)
{
	u32 val;

	if (!(tp->phy_flags & TG3_PHYFLG_EEE_CAP))
		return;

	tp->setlpicnt = 0;

	if (tp->link_config.autoneg == AUTONEG_ENABLE &&
	    current_link_up &&
	    tp->link_config.active_duplex == DUPLEX_FULL &&
	    (tp->link_config.active_speed == SPEED_100 ||
	     tp->link_config.active_speed == SPEED_1000)) {
		u32 eeectl;

		if (tp->link_config.active_speed == SPEED_1000)
			eeectl = TG3_CPMU_EEE_CTRL_EXIT_16_5_US;
		else
			eeectl = TG3_CPMU_EEE_CTRL_EXIT_36_US;

		FUNC4(TG3_CPMU_EEE_CTRL, eeectl);

		FUNC0(tp, NULL);
		if (tp->eee.eee_active)
			tp->setlpicnt = 2;
	}

	if (!tp->setlpicnt) {
		if (current_link_up &&
		   !FUNC1(tp, true)) {
			FUNC2(tp, MII_TG3_DSP_TAP26, 0x0000);
			FUNC1(tp, false);
		}

		val = FUNC3(TG3_CPMU_EEE_MODE);
		FUNC4(TG3_CPMU_EEE_MODE, val & ~TG3_CPMU_EEEMD_LPI_ENABLE);
	}
}