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
typedef  size_t u8 ;
struct iwl_rxon_context {int dummy; } ;
struct iwl_priv {int /*<<< orphan*/  sta_lock; TYPE_1__* stations; } ;
struct iwl_link_quality_cmd {int dummy; } ;
struct TYPE_2__ {struct iwl_link_quality_cmd* lq; int /*<<< orphan*/  used; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SYNC ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*,...) ; 
 size_t IWL_INVALID_STATION ; 
 int /*<<< orphan*/  IWL_STA_LOCAL ; 
 int FUNC1 (struct iwl_priv*,struct iwl_rxon_context*,size_t const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC2 (struct iwl_priv*,struct iwl_rxon_context*,struct iwl_link_quality_cmd*,int /*<<< orphan*/ ,int) ; 
 struct iwl_link_quality_cmd* FUNC3 (struct iwl_priv*,struct iwl_rxon_context*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct iwl_priv *priv,
			     struct iwl_rxon_context *ctx,
			     const u8 *addr, u8 *sta_id_r)
{
	int ret;
	u8 sta_id;
	struct iwl_link_quality_cmd *link_cmd;

	if (sta_id_r)
		*sta_id_r = IWL_INVALID_STATION;

	ret = FUNC1(priv, ctx, addr, 0, NULL, &sta_id);
	if (ret) {
		FUNC0(priv, "Unable to add station %pM\n", addr);
		return ret;
	}

	if (sta_id_r)
		*sta_id_r = sta_id;

	FUNC4(&priv->sta_lock);
	priv->stations[sta_id].used |= IWL_STA_LOCAL;
	FUNC5(&priv->sta_lock);

	/* Set up default rate scaling table in device's station table */
	link_cmd = FUNC3(priv, ctx, sta_id);
	if (!link_cmd) {
		FUNC0(priv,
			"Unable to initialize rate scaling for station %pM.\n",
			addr);
		return -ENOMEM;
	}

	ret = FUNC2(priv, ctx, link_cmd, CMD_SYNC, true);
	if (ret)
		FUNC0(priv, "Link quality command failed (%d)\n", ret);

	FUNC4(&priv->sta_lock);
	priv->stations[sta_id].lq = link_cmd;
	FUNC5(&priv->sta_lock);

	return 0;
}