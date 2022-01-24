#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct iwl_vif_priv {struct iwl_rxon_context* ctx; } ;
struct TYPE_5__ {TYPE_1__* ac; } ;
struct TYPE_6__ {TYPE_2__ def_qos_parm; } ;
struct iwl_rxon_context {TYPE_3__ qos_data; } ;
struct iwl_priv {int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_tx_queue_params {int cw_min; int cw_max; int txop; int /*<<< orphan*/  aifs; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {scalar_t__ reserved1; void* edca_txop; int /*<<< orphan*/  aifsn; void* cw_max; void* cw_min; } ;

/* Variables and functions */
 int AC_NUM ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*,...) ; 
 struct iwl_priv* FUNC1 (struct ieee80211_hw*) ; 
 scalar_t__ FUNC2 (int) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_priv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct ieee80211_hw *hw,
			      struct ieee80211_vif *vif, u16 queue,
			      const struct ieee80211_tx_queue_params *params)
{
	struct iwl_priv *priv = FUNC1(hw);
	struct iwl_vif_priv *vif_priv = (void *)vif->drv_priv;
	struct iwl_rxon_context *ctx = vif_priv->ctx;
	int q;

	if (FUNC2(!ctx))
		return -EINVAL;

	FUNC0(priv, "enter\n");

	if (!FUNC4(priv)) {
		FUNC0(priv, "leave - RF not ready\n");
		return -EIO;
	}

	if (queue >= AC_NUM) {
		FUNC0(priv, "leave - queue >= AC_NUM %d\n", queue);
		return 0;
	}

	q = AC_NUM - 1 - queue;

	FUNC5(&priv->mutex);

	ctx->qos_data.def_qos_parm.ac[q].cw_min =
		FUNC3(params->cw_min);
	ctx->qos_data.def_qos_parm.ac[q].cw_max =
		FUNC3(params->cw_max);
	ctx->qos_data.def_qos_parm.ac[q].aifsn = params->aifs;
	ctx->qos_data.def_qos_parm.ac[q].edca_txop =
			FUNC3((params->txop * 32));

	ctx->qos_data.def_qos_parm.ac[q].reserved1 = 0;

	FUNC6(&priv->mutex);

	FUNC0(priv, "leave\n");
	return 0;
}