#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  debugfs_phy; } ;
struct TYPE_10__ {int /*<<< orphan*/ * txq_max_pending; } ;
struct ath_softc {TYPE_7__ debug; TYPE_5__* sc_ah; int /*<<< orphan*/  rfs_chan_spec_scan; TYPE_3__ tx; TYPE_2__* hw; } ;
struct TYPE_13__ {int /*<<< orphan*/  cwm_ignore_extcca; } ;
struct ath_hw {TYPE_6__ config; } ;
struct ath_common {scalar_t__ priv; } ;
struct TYPE_11__ {int /*<<< orphan*/  enable_paprd; } ;
struct TYPE_12__ {int /*<<< orphan*/  gpio_val; int /*<<< orphan*/  gpio_mask; TYPE_4__ config; } ;
struct TYPE_9__ {TYPE_1__* wiphy; } ;
struct TYPE_8__ {int /*<<< orphan*/  debugfsdir; } ;

/* Variables and functions */
 int ENOMEM ; 
 size_t IEEE80211_AC_BE ; 
 size_t IEEE80211_AC_BK ; 
 size_t IEEE80211_AC_VI ; 
 size_t IEEE80211_AC_VO ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  FUNC0 (struct ath_softc*) ; 
 struct ath_common* FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ,struct ath_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fops_ant_diversity ; 
 int /*<<< orphan*/  fops_base_eeprom ; 
 int /*<<< orphan*/  fops_btcoex ; 
 int /*<<< orphan*/  fops_debug ; 
 int /*<<< orphan*/  fops_disable_ani ; 
 int /*<<< orphan*/  fops_dma ; 
 int /*<<< orphan*/  fops_dump_nfcal ; 
 int /*<<< orphan*/  fops_interrupt ; 
 int /*<<< orphan*/  fops_misc ; 
 int /*<<< orphan*/  fops_modal_eeprom ; 
 int /*<<< orphan*/  fops_queues ; 
 int /*<<< orphan*/  fops_recv ; 
 int /*<<< orphan*/  fops_regdump ; 
 int /*<<< orphan*/  fops_regidx ; 
 int /*<<< orphan*/  fops_regval ; 
 int /*<<< orphan*/  fops_reset ; 
 int /*<<< orphan*/  fops_rx_chainmask ; 
 int /*<<< orphan*/  fops_samps ; 
 int /*<<< orphan*/  fops_spec_scan_ctl ; 
 int /*<<< orphan*/  fops_spectral_count ; 
 int /*<<< orphan*/  fops_spectral_fft_period ; 
 int /*<<< orphan*/  fops_spectral_period ; 
 int /*<<< orphan*/  fops_spectral_short_repeat ; 
 int /*<<< orphan*/  fops_tx_chainmask ; 
 int /*<<< orphan*/  fops_xmit ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rfs_spec_scan_cb ; 

int FUNC7(struct ath_hw *ah)
{
	struct ath_common *common = FUNC1(ah);
	struct ath_softc *sc = (struct ath_softc *) common->priv;

	sc->debug.debugfs_phy = FUNC3("ath9k",
						   sc->hw->wiphy->debugfsdir);
	if (!sc->debug.debugfs_phy)
		return -ENOMEM;

#ifdef CONFIG_ATH_DEBUG
	debugfs_create_file("debug", S_IRUSR | S_IWUSR, sc->debug.debugfs_phy,
			    sc, &fops_debug);
#endif

	FUNC0(sc);

	FUNC4("dma", S_IRUSR, sc->debug.debugfs_phy, sc,
			    &fops_dma);
	FUNC4("interrupt", S_IRUSR, sc->debug.debugfs_phy, sc,
			    &fops_interrupt);
	FUNC4("xmit", S_IRUSR, sc->debug.debugfs_phy, sc,
			    &fops_xmit);
	FUNC4("queues", S_IRUSR, sc->debug.debugfs_phy, sc,
			    &fops_queues);
	FUNC5("qlen_bk", S_IRUSR | S_IWUSR, sc->debug.debugfs_phy,
			   &sc->tx.txq_max_pending[IEEE80211_AC_BK]);
	FUNC5("qlen_be", S_IRUSR | S_IWUSR, sc->debug.debugfs_phy,
			   &sc->tx.txq_max_pending[IEEE80211_AC_BE]);
	FUNC5("qlen_vi", S_IRUSR | S_IWUSR, sc->debug.debugfs_phy,
			   &sc->tx.txq_max_pending[IEEE80211_AC_VI]);
	FUNC5("qlen_vo", S_IRUSR | S_IWUSR, sc->debug.debugfs_phy,
			   &sc->tx.txq_max_pending[IEEE80211_AC_VO]);
	FUNC4("misc", S_IRUSR, sc->debug.debugfs_phy, sc,
			    &fops_misc);
	FUNC4("reset", S_IRUSR, sc->debug.debugfs_phy, sc,
			    &fops_reset);
	FUNC4("recv", S_IRUSR, sc->debug.debugfs_phy, sc,
			    &fops_recv);
	FUNC4("rx_chainmask", S_IRUSR | S_IWUSR,
			    sc->debug.debugfs_phy, sc, &fops_rx_chainmask);
	FUNC4("tx_chainmask", S_IRUSR | S_IWUSR,
			    sc->debug.debugfs_phy, sc, &fops_tx_chainmask);
	FUNC4("disable_ani", S_IRUSR | S_IWUSR,
			    sc->debug.debugfs_phy, sc, &fops_disable_ani);
	FUNC2("paprd", S_IRUSR | S_IWUSR, sc->debug.debugfs_phy,
			    &sc->sc_ah->config.enable_paprd);
	FUNC4("regidx", S_IRUSR | S_IWUSR, sc->debug.debugfs_phy,
			    sc, &fops_regidx);
	FUNC4("regval", S_IRUSR | S_IWUSR, sc->debug.debugfs_phy,
			    sc, &fops_regval);
	FUNC2("ignore_extcca", S_IRUSR | S_IWUSR,
			    sc->debug.debugfs_phy,
			    &ah->config.cwm_ignore_extcca);
	FUNC4("regdump", S_IRUSR, sc->debug.debugfs_phy, sc,
			    &fops_regdump);
	FUNC4("dump_nfcal", S_IRUSR, sc->debug.debugfs_phy, sc,
			    &fops_dump_nfcal);
	FUNC4("base_eeprom", S_IRUSR, sc->debug.debugfs_phy, sc,
			    &fops_base_eeprom);
	FUNC4("modal_eeprom", S_IRUSR, sc->debug.debugfs_phy, sc,
			    &fops_modal_eeprom);
	sc->rfs_chan_spec_scan = FUNC6("spectral_scan",
					    sc->debug.debugfs_phy,
					    1024, 256, &rfs_spec_scan_cb,
					    NULL);
	FUNC4("spectral_scan_ctl", S_IRUSR | S_IWUSR,
			    sc->debug.debugfs_phy, sc,
			    &fops_spec_scan_ctl);
	FUNC4("spectral_short_repeat", S_IRUSR | S_IWUSR,
			    sc->debug.debugfs_phy, sc,
			    &fops_spectral_short_repeat);
	FUNC4("spectral_count", S_IRUSR | S_IWUSR,
			    sc->debug.debugfs_phy, sc, &fops_spectral_count);
	FUNC4("spectral_period", S_IRUSR | S_IWUSR,
			    sc->debug.debugfs_phy, sc, &fops_spectral_period);
	FUNC4("spectral_fft_period", S_IRUSR | S_IWUSR,
			    sc->debug.debugfs_phy, sc,
			    &fops_spectral_fft_period);

#ifdef CONFIG_ATH9K_MAC_DEBUG
	debugfs_create_file("samples", S_IRUSR, sc->debug.debugfs_phy, sc,
			    &fops_samps);
#endif
	FUNC5("gpio_mask", S_IRUSR | S_IWUSR,
			   sc->debug.debugfs_phy, &sc->sc_ah->gpio_mask);
	FUNC5("gpio_val", S_IRUSR | S_IWUSR,
			   sc->debug.debugfs_phy, &sc->sc_ah->gpio_val);
	FUNC4("diversity", S_IRUSR | S_IWUSR,
			    sc->debug.debugfs_phy, sc, &fops_ant_diversity);
#ifdef CONFIG_ATH9K_BTCOEX_SUPPORT
	debugfs_create_file("btcoex", S_IRUSR, sc->debug.debugfs_phy, sc,
			    &fops_btcoex);
#endif
	return 0;
}