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
struct iwl_rxon_context {size_t bcast_sta_id; } ;
struct iwl_priv {int /*<<< orphan*/  sta_lock; TYPE_1__* stations; } ;
struct iwl_link_quality_cmd {int dummy; } ;
struct TYPE_2__ {struct iwl_link_quality_cmd* lq; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,char*) ; 
 struct iwl_link_quality_cmd* FUNC2 (struct iwl_priv*,struct iwl_rxon_context*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_link_quality_cmd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct iwl_priv *priv,
			     struct iwl_rxon_context *ctx)
{
	struct iwl_link_quality_cmd *link_cmd;
	u8 sta_id = ctx->bcast_sta_id;

	link_cmd = FUNC2(priv, ctx, sta_id);
	if (!link_cmd) {
		FUNC1(priv, "Unable to initialize rate scaling for bcast station.\n");
		return -ENOMEM;
	}

	FUNC4(&priv->sta_lock);
	if (priv->stations[sta_id].lq)
		FUNC3(priv->stations[sta_id].lq);
	else
		FUNC0(priv, "Bcast station rate scaling has not been initialized yet.\n");
	priv->stations[sta_id].lq = link_cmd;
	FUNC5(&priv->sta_lock);

	return 0;
}