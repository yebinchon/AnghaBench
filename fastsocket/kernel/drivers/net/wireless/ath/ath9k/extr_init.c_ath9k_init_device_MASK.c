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
typedef  int /*<<< orphan*/  u16 ;
struct ieee80211_hw {int /*<<< orphan*/  wiphy; } ;
struct TYPE_2__ {int /*<<< orphan*/  default_trigger; } ;
struct ath_softc {struct ieee80211_hw* hw; TYPE_1__ led_cdev; struct ath_hw* sc_ah; } ;
struct ath_regulatory {int /*<<< orphan*/  alpha2; } ;
struct ath_hw {int dummy; } ;
struct ath_common {struct ath_regulatory regulatory; } ;
struct ath_bus_ops {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ATH_RXBUF ; 
 int /*<<< orphan*/  ATH_TXBUF ; 
 int /*<<< orphan*/  IEEE80211_TPT_LEDTRIG_FL_RADIO ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*) ; 
 struct ath_common* FUNC3 (struct ath_hw*) ; 
 int FUNC4 (struct ath_hw*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct ath_softc*,struct ath_bus_ops const*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_softc*) ; 
 int /*<<< orphan*/  ath9k_reg_notifier ; 
 int /*<<< orphan*/  FUNC7 (struct ath_softc*,struct ieee80211_hw*) ; 
 int /*<<< orphan*/  ath9k_tpt_blink ; 
 int /*<<< orphan*/  FUNC8 (struct ath_common*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_regulatory*) ; 
 int FUNC11 (struct ath_regulatory*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_softc*) ; 
 int FUNC13 (struct ath_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ath_softc*) ; 
 int FUNC15 (struct ath_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC18 (struct ieee80211_hw*) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC20(u16 devid, struct ath_softc *sc,
		    const struct ath_bus_ops *bus_ops)
{
	struct ieee80211_hw *hw = sc->hw;
	struct ath_common *common;
	struct ath_hw *ah;
	int error = 0;
	struct ath_regulatory *reg;

	/* Bring up device */
	error = FUNC5(devid, sc, bus_ops);
	if (error)
		return error;

	ah = sc->sc_ah;
	common = FUNC3(ah);
	FUNC7(sc, hw);

	/* Initialize regulatory */
	error = FUNC11(&common->regulatory, sc->hw->wiphy,
			      ath9k_reg_notifier);
	if (error)
		goto deinit;

	reg = &common->regulatory;

	/* Setup TX DMA */
	error = FUNC15(sc, ATH_TXBUF);
	if (error != 0)
		goto deinit;

	/* Setup RX DMA */
	error = FUNC13(sc, ATH_RXBUF);
	if (error != 0)
		goto deinit;

	FUNC6(sc);

#ifdef CONFIG_MAC80211_LEDS
	/* must be initialized before ieee80211_register_hw */
	sc->led_cdev.default_trigger = ieee80211_create_tpt_led_trigger(sc->hw,
		IEEE80211_TPT_LEDTRIG_FL_RADIO, ath9k_tpt_blink,
		ARRAY_SIZE(ath9k_tpt_blink));
#endif

	/* Register with mac80211 */
	error = FUNC17(hw);
	if (error)
		goto rx_cleanup;

	error = FUNC4(ah);
	if (error) {
		FUNC8(common, "Unable to create debugfs files\n");
		goto unregister;
	}

	/* Handle world regulatory */
	if (!FUNC10(reg)) {
		error = FUNC19(hw->wiphy, reg->alpha2);
		if (error)
			goto debug_cleanup;
	}

	FUNC9(sc);
	FUNC14(sc);

	return 0;

debug_cleanup:
	FUNC1(sc);
unregister:
	FUNC18(hw);
rx_cleanup:
	FUNC12(sc);
deinit:
	FUNC2(sc);
	return error;
}