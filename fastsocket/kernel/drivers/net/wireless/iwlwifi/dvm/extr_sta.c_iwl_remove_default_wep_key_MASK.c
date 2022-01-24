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
struct iwl_rxon_context {int /*<<< orphan*/ * wep_keys; } ;
struct iwl_priv {int /*<<< orphan*/  mutex; } ;
struct ieee80211_key_conf {size_t keyidx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*,...) ; 
 scalar_t__ FUNC1 (struct iwl_priv*) ; 
 int FUNC2 (struct iwl_priv*,struct iwl_rxon_context*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct iwl_priv *priv,
			       struct iwl_rxon_context *ctx,
			       struct ieee80211_key_conf *keyconf)
{
	int ret;

	FUNC3(&priv->mutex);

	FUNC0(priv, "Removing default WEP key: idx=%d\n",
		      keyconf->keyidx);

	FUNC4(&ctx->wep_keys[keyconf->keyidx], 0, sizeof(ctx->wep_keys[0]));
	if (FUNC1(priv)) {
		FUNC0(priv,
			"Not sending REPLY_WEPKEY command due to RFKILL.\n");
		/* but keys in device are clear anyway so return success */
		return 0;
	}
	ret = FUNC2(priv, ctx, 1);
	FUNC0(priv, "Remove default WEP key: idx=%d ret=%d\n",
		      keyconf->keyidx, ret);

	return ret;
}