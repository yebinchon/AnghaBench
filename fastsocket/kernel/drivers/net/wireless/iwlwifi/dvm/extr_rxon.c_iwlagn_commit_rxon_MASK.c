#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int filter_flags; int flags; scalar_t__ channel; int /*<<< orphan*/  bssid_addr; } ;
struct iwl_rxon_context {TYPE_4__ staging; int /*<<< orphan*/  ctxid; TYPE_3__* vif; int /*<<< orphan*/  is_active; int /*<<< orphan*/  active; } ;
struct iwl_rxon_cmd {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  use_rts_for_aggregation; } ;
struct iwl_priv {scalar_t__ switch_channel; int /*<<< orphan*/  tx_power_next; int /*<<< orphan*/  status; TYPE_1__ hw_params; int /*<<< orphan*/  mutex; } ;
struct TYPE_10__ {int /*<<< orphan*/  sw_crypto; } ;
struct TYPE_7__ {scalar_t__ use_short_slot; } ;
struct TYPE_8__ {TYPE_2__ bss_conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_priv*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_priv*,char*,...) ; 
 int NUM_IWL_RXON_CTX ; 
 int RXON_FILTER_ASSOC_MSK ; 
 int RXON_FLG_BAND_24G_MSK ; 
 int RXON_FLG_SELF_CTS_EN ; 
 int RXON_FLG_SHORT_SLOT_MSK ; 
 int RXON_FLG_TSF2HOST_MSK ; 
 int /*<<< orphan*/  STATUS_CHANNEL_SWITCH_PENDING ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_priv*,struct iwl_rxon_context*) ; 
 int FUNC5 (struct iwl_priv*,struct iwl_rxon_context*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_priv*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_priv*,struct iwl_rxon_context*) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_priv*) ; 
 int /*<<< orphan*/  FUNC9 (struct iwl_priv*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct iwl_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct iwl_priv*,struct iwl_rxon_context*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct iwl_priv*,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (struct iwl_priv*,struct iwl_rxon_context*) ; 
 int FUNC14 (struct iwl_priv*,struct iwl_rxon_context*) ; 
 int FUNC15 (struct iwl_priv*,struct iwl_rxon_context*) ; 
 int FUNC16 (struct iwl_priv*) ; 
 TYPE_5__ iwlwifi_mod_params ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct iwl_rxon_cmd*,TYPE_4__*,int) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC21(struct iwl_priv *priv, struct iwl_rxon_context *ctx)
{
	/* cast away the const for active_rxon in this function */
	struct iwl_rxon_cmd *active = (void *)&ctx->active;
	bool new_assoc = !!(ctx->staging.filter_flags & RXON_FILTER_ASSOC_MSK);
	int ret;

	FUNC18(&priv->mutex);

	if (!FUNC8(priv))
		return -EBUSY;

	/* This function hardcodes a bunch of dual-mode assumptions */
	FUNC0(NUM_IWL_RXON_CTX != 2);

	if (!ctx->is_active)
		return 0;

	/* always get timestamp with Rx frame */
	ctx->staging.flags |= RXON_FLG_TSF2HOST_MSK;

	/* recalculate basic rates */
	FUNC4(priv, ctx);

	/*
	 * force CTS-to-self frames protection if RTS-CTS is not preferred
	 * one aggregation protection method
	 */
	if (!priv->hw_params.use_rts_for_aggregation)
		ctx->staging.flags |= RXON_FLG_SELF_CTS_EN;

	if ((ctx->vif && ctx->vif->bss_conf.use_short_slot) ||
	    !(ctx->staging.flags & RXON_FLG_BAND_24G_MSK))
		ctx->staging.flags |= RXON_FLG_SHORT_SLOT_MSK;
	else
		ctx->staging.flags &= ~RXON_FLG_SHORT_SLOT_MSK;

	FUNC10(priv, ctx->ctxid);
	ret = FUNC5(priv, ctx);
	if (ret) {
		FUNC3(priv, "Invalid RXON configuration. Not committing.\n");
		return -EINVAL;
	}

	/*
	 * receive commit_rxon request
	 * abort any previous channel switch if still in process
	 */
	if (FUNC20(STATUS_CHANNEL_SWITCH_PENDING, &priv->status) &&
	    (priv->switch_channel != ctx->staging.channel)) {
		FUNC1(priv, "abort channel switch on %d\n",
			      FUNC17(priv->switch_channel));
		FUNC6(priv, false);
	}

	/*
	 * If we don't need to send a full RXON, we can use
	 * iwl_rxon_assoc_cmd which is used to reconfigure filter
	 * and other flags for the current radio configuration.
	 */
	if (!FUNC7(priv, ctx)) {
		ret = FUNC15(priv, ctx);
		if (ret) {
			FUNC3(priv, "Error setting RXON_ASSOC (%d)\n", ret);
			return ret;
		}

		FUNC19(active, &ctx->staging, sizeof(*active));
		/*
		 * We do not commit tx power settings while channel changing,
		 * do it now if after settings changed.
		 */
		FUNC12(priv, priv->tx_power_next, false);

		/* make sure we are in the right PS state */
		FUNC9(priv, true);

		return 0;
	}

	FUNC11(priv, ctx, !iwlwifi_mod_params.sw_crypto);

	FUNC2(priv,
		       "Going to commit RXON\n"
		       "  * with%s RXON_FILTER_ASSOC_MSK\n"
		       "  * channel = %d\n"
		       "  * bssid = %pM\n",
		       (new_assoc ? "" : "out"),
		       FUNC17(ctx->staging.channel),
		       ctx->staging.bssid_addr);

	/*
	 * Always clear associated first, but with the correct config.
	 * This is required as for example station addition for the
	 * AP station must be done after the BSSID is set to correctly
	 * set up filters in the device.
	 */
	ret = FUNC14(priv, ctx);
	if (ret)
		return ret;

	ret = FUNC16(priv);
	if (ret)
		return ret;

	if (new_assoc)
		return FUNC13(priv, ctx);

	return 0;
}