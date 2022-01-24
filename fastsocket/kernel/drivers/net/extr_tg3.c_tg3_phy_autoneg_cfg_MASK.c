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
typedef  int u32 ;
struct TYPE_2__ {int advertised; int /*<<< orphan*/  eee_enabled; } ;
struct tg3 {int phy_flags; TYPE_1__ eee; } ;

/* Variables and functions */
 int ADVERTISED_1000baseT_Full ; 
 int ADVERTISED_100baseT_Full ; 
 int ADVERTISE_ALL ; 
 int ADVERTISE_CSMA ; 
#define  ASIC_REV_5717 133 
#define  ASIC_REV_5719 132 
#define  ASIC_REV_5720 131 
#define  ASIC_REV_5762 130 
#define  ASIC_REV_57765 129 
#define  ASIC_REV_57766 128 
 scalar_t__ CHIPREV_ID_5701_A0 ; 
 scalar_t__ CHIPREV_ID_5701_B0 ; 
 int CTL1000_AS_MASTER ; 
 int CTL1000_ENABLE_MASTER ; 
 int /*<<< orphan*/  MDIO_AN_EEE_ADV ; 
 int MDIO_AN_EEE_ADV_1000T ; 
 int MDIO_AN_EEE_ADV_100TX ; 
 int /*<<< orphan*/  MDIO_MMD_AN ; 
 int /*<<< orphan*/  MII_ADVERTISE ; 
 int /*<<< orphan*/  MII_CTRL1000 ; 
 int /*<<< orphan*/  MII_TG3_DSP_CH34TP2 ; 
 int MII_TG3_DSP_CH34TP2_HIBW01 ; 
 int /*<<< orphan*/  MII_TG3_DSP_TAP26 ; 
 int MII_TG3_DSP_TAP26_ALNOKO ; 
 int MII_TG3_DSP_TAP26_OPCSINPT ; 
 int MII_TG3_DSP_TAP26_RMRXSTO ; 
 int TG3_CPMU_EEEMD_LPI_ENABLE ; 
 int /*<<< orphan*/  TG3_CPMU_EEE_MODE ; 
 int TG3_PHYFLG_10_100_ONLY ; 
 int TG3_PHYFLG_EEE_CAP ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (struct tg3*) ; 
 scalar_t__ FUNC4 (struct tg3*) ; 
 int FUNC5 (struct tg3*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct tg3*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct tg3*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct tg3*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct tg3*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC12(struct tg3 *tp, u32 advertise, u32 flowctrl)
{
	int err = 0;
	u32 val, new_adv;

	new_adv = ADVERTISE_CSMA;
	new_adv |= FUNC0(advertise) & ADVERTISE_ALL;
	new_adv |= FUNC2(flowctrl);

	err = FUNC9(tp, MII_ADVERTISE, new_adv);
	if (err)
		goto done;

	if (!(tp->phy_flags & TG3_PHYFLG_10_100_ONLY)) {
		new_adv = FUNC1(advertise);

		if (FUNC4(tp) == CHIPREV_ID_5701_A0 ||
		    FUNC4(tp) == CHIPREV_ID_5701_B0)
			new_adv |= CTL1000_AS_MASTER | CTL1000_ENABLE_MASTER;

		err = FUNC9(tp, MII_CTRL1000, new_adv);
		if (err)
			goto done;
	}

	if (!(tp->phy_flags & TG3_PHYFLG_EEE_CAP))
		goto done;

	FUNC11(TG3_CPMU_EEE_MODE,
	     FUNC10(TG3_CPMU_EEE_MODE) & ~TG3_CPMU_EEEMD_LPI_ENABLE);

	err = FUNC6(tp, true);
	if (!err) {
		u32 err2;

		val = 0;
		/* Advertise 100-BaseTX EEE ability */
		if (advertise & ADVERTISED_100baseT_Full)
			val |= MDIO_AN_EEE_ADV_100TX;
		/* Advertise 1000-BaseT EEE ability */
		if (advertise & ADVERTISED_1000baseT_Full)
			val |= MDIO_AN_EEE_ADV_1000T;

		if (!tp->eee.eee_enabled) {
			val = 0;
			tp->eee.advertised = 0;
		} else {
			tp->eee.advertised = advertise &
					     (ADVERTISED_100baseT_Full |
					      ADVERTISED_1000baseT_Full);
		}

		err = FUNC5(tp, MDIO_MMD_AN, MDIO_AN_EEE_ADV, val);
		if (err)
			val = 0;

		switch (FUNC3(tp)) {
		case ASIC_REV_5717:
		case ASIC_REV_57765:
		case ASIC_REV_57766:
		case ASIC_REV_5719:
			/* If we advertised any eee advertisements above... */
			if (val)
				val = MII_TG3_DSP_TAP26_ALNOKO |
				      MII_TG3_DSP_TAP26_RMRXSTO |
				      MII_TG3_DSP_TAP26_OPCSINPT;
			FUNC8(tp, MII_TG3_DSP_TAP26, val);
			/* Fall through */
		case ASIC_REV_5720:
		case ASIC_REV_5762:
			if (!FUNC7(tp, MII_TG3_DSP_CH34TP2, &val))
				FUNC8(tp, MII_TG3_DSP_CH34TP2, val |
						 MII_TG3_DSP_CH34TP2_HIBW01);
		}

		err2 = FUNC6(tp, false);
		if (!err)
			err = err2;
	}

done:
	return err;
}