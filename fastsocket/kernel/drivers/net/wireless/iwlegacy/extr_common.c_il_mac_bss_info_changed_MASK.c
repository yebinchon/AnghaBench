#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct il_rxon_cmd {int dummy; } ;
struct TYPE_9__ {void* bssid_addr; int /*<<< orphan*/  flags; } ;
struct TYPE_6__ {int /*<<< orphan*/  qos_active; } ;
struct il_priv {int beacon_enabled; void* bssid; scalar_t__ band; int /*<<< orphan*/  mutex; TYPE_3__* ops; TYPE_4__ staging; int /*<<< orphan*/  active; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  lock; TYPE_1__ qos_data; } ;
struct TYPE_7__ {scalar_t__ enable_beacon; } ;
struct ieee80211_vif {scalar_t__ type; TYPE_2__ bss_conf; } ;
struct ieee80211_hw {struct il_priv* priv; } ;
struct ieee80211_bss_conf {TYPE_4__* bssid; int /*<<< orphan*/  ibss_joined; scalar_t__ aid; int /*<<< orphan*/  sync_tsf; scalar_t__ assoc; scalar_t__ use_cts_prot; scalar_t__ use_short_preamble; int /*<<< orphan*/  qos; } ;
struct TYPE_8__ {int (* manage_ibss_station ) (struct il_priv*,struct ieee80211_vif*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* config_ap ) (struct il_priv*) ;int /*<<< orphan*/  (* post_associate ) (struct il_priv*) ;int /*<<< orphan*/  (* set_rxon_chain ) (struct il_priv*) ;} ;

/* Variables and functions */
 int BSS_CHANGED_ASSOC ; 
 int BSS_CHANGED_BASIC_RATES ; 
 int BSS_CHANGED_BEACON ; 
 int BSS_CHANGED_BEACON_ENABLED ; 
 int BSS_CHANGED_BSSID ; 
 int BSS_CHANGED_ERP_CTS_PROT ; 
 int BSS_CHANGED_ERP_PREAMBLE ; 
 int BSS_CHANGED_HT ; 
 int BSS_CHANGED_IBSS ; 
 int BSS_CHANGED_QOS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int ETH_ALEN ; 
 scalar_t__ IEEE80211_BAND_5GHZ ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,TYPE_4__*) ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 int /*<<< orphan*/  RXON_FLG_SELF_CTS_EN ; 
 int /*<<< orphan*/  RXON_FLG_SHORT_PREAMBLE_MSK ; 
 int /*<<< orphan*/  RXON_FLG_TGG_PROTECT_MSK ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC3 (struct il_priv*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC4 (struct il_priv*) ; 
 scalar_t__ FUNC5 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct il_priv*) ; 
 scalar_t__ FUNC7 (struct il_priv*,int) ; 
 int FUNC8 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC9 (struct il_priv*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC10 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC11 (void*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC17 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC18 (struct il_priv*) ; 
 int FUNC19 (struct il_priv*,struct ieee80211_vif*,int /*<<< orphan*/ ) ; 

void
FUNC20(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
			struct ieee80211_bss_conf *bss_conf, u32 changes)
{
	struct il_priv *il = hw->priv;
	int ret;

	FUNC12(&il->mutex);
	FUNC0("enter: changes 0x%x\n", changes);

	if (!FUNC4(il)) {
		FUNC0("leave - not alive\n");
		FUNC13(&il->mutex);
		return;
	}

	if (changes & BSS_CHANGED_QOS) {
		unsigned long flags;

		FUNC14(&il->lock, flags);
		il->qos_data.qos_active = bss_conf->qos;
		FUNC10(il);
		FUNC15(&il->lock, flags);
	}

	if (changes & BSS_CHANGED_BEACON_ENABLED) {
		/* FIXME: can we remove beacon_enabled ? */
		if (vif->bss_conf.enable_beacon)
			il->beacon_enabled = true;
		else
			il->beacon_enabled = false;
	}

	if (changes & BSS_CHANGED_BSSID) {
		FUNC0("BSSID %pM\n", bss_conf->bssid);

		/*
		 * If there is currently a HW scan going on in the background,
		 * then we need to cancel it, otherwise sometimes we are not
		 * able to authenticate (FIXME: why ?)
		 */
		if (FUNC7(il, 100)) {
			FUNC0("leave - scan abort failed\n");
			FUNC13(&il->mutex);
			return;
		}

		/* mac80211 only sets assoc when in STATION mode */
		FUNC11(il->staging.bssid_addr, bss_conf->bssid, ETH_ALEN);

		/* FIXME: currently needed in a few places */
		FUNC11(il->bssid, bss_conf->bssid, ETH_ALEN);
	}

	/*
	 * This needs to be after setting the BSSID in case
	 * mac80211 decides to do both changes at once because
	 * it will invoke post_associate.
	 */
	if (vif->type == NL80211_IFTYPE_ADHOC && (changes & BSS_CHANGED_BEACON))
		FUNC2(hw, vif);

	if (changes & BSS_CHANGED_ERP_PREAMBLE) {
		FUNC0("ERP_PREAMBLE %d\n", bss_conf->use_short_preamble);
		if (bss_conf->use_short_preamble)
			il->staging.flags |= RXON_FLG_SHORT_PREAMBLE_MSK;
		else
			il->staging.flags &= ~RXON_FLG_SHORT_PREAMBLE_MSK;
	}

	if (changes & BSS_CHANGED_ERP_CTS_PROT) {
		FUNC0("ERP_CTS %d\n", bss_conf->use_cts_prot);
		if (bss_conf->use_cts_prot && il->band != IEEE80211_BAND_5GHZ)
			il->staging.flags |= RXON_FLG_TGG_PROTECT_MSK;
		else
			il->staging.flags &= ~RXON_FLG_TGG_PROTECT_MSK;
		if (bss_conf->use_cts_prot)
			il->staging.flags |= RXON_FLG_SELF_CTS_EN;
		else
			il->staging.flags &= ~RXON_FLG_SELF_CTS_EN;
	}

	if (changes & BSS_CHANGED_BASIC_RATES) {
		/* XXX use this information
		 *
		 * To do that, remove code from il_set_rate() and put something
		 * like this here:
		 *
		 if (A-band)
		 il->staging.ofdm_basic_rates =
		 bss_conf->basic_rates;
		 else
		 il->staging.ofdm_basic_rates =
		 bss_conf->basic_rates >> 4;
		 il->staging.cck_basic_rates =
		 bss_conf->basic_rates & 0xF;
		 */
	}

	if (changes & BSS_CHANGED_HT) {
		FUNC3(il, vif);

		if (il->ops->set_rxon_chain)
			il->ops->set_rxon_chain(il);
	}

	if (changes & BSS_CHANGED_ASSOC) {
		FUNC0("ASSOC %d\n", bss_conf->assoc);
		if (bss_conf->assoc) {
			il->timestamp = bss_conf->sync_tsf;

			if (!FUNC6(il))
				il->ops->post_associate(il);
		} else
			FUNC9(il, vif);
	}

	if (changes && FUNC5(il) && bss_conf->aid) {
		FUNC0("Changes (%#x) while associated\n", changes);
		ret = FUNC8(il);
		if (!ret) {
			/* Sync active_rxon with latest change. */
			FUNC11((void *)&il->active, &il->staging,
			       sizeof(struct il_rxon_cmd));
		}
	}

	if (changes & BSS_CHANGED_BEACON_ENABLED) {
		if (vif->bss_conf.enable_beacon) {
			FUNC11(il->staging.bssid_addr, bss_conf->bssid,
			       ETH_ALEN);
			FUNC11(il->bssid, bss_conf->bssid, ETH_ALEN);
			il->ops->config_ap(il);
		} else
			FUNC9(il, vif);
	}

	if (changes & BSS_CHANGED_IBSS) {
		ret = il->ops->manage_ibss_station(il, vif,
						   bss_conf->ibss_joined);
		if (ret)
			FUNC1("failed to %s IBSS station %pM\n",
			       bss_conf->ibss_joined ? "add" : "remove",
			       bss_conf->bssid);
	}

	FUNC0("leave\n");
	FUNC13(&il->mutex);
}