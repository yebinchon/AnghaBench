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
typedef  int u8 ;
struct iwl_rxon_context {int dummy; } ;
struct iwl_priv {int /*<<< orphan*/  sta_lock; TYPE_1__* stations; } ;
struct iwl_link_quality_cmd {size_t sta_id; } ;
struct iwl_host_cmd {int flags; int /*<<< orphan*/  data; int /*<<< orphan*/  len; int /*<<< orphan*/  id; } ;
struct TYPE_2__ {int used; } ;

/* Variables and functions */
 int CMD_ASYNC ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*,size_t) ; 
 size_t IWL_INVALID_STATION ; 
 int IWL_STA_DRIVER_ACTIVE ; 
 int IWL_STA_UCODE_INPROGRESS ; 
 int /*<<< orphan*/  REPLY_TX_LINK_QUALITY_CMD ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct iwl_priv*,struct iwl_rxon_context*,struct iwl_link_quality_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_priv*,struct iwl_link_quality_cmd*) ; 
 int FUNC4 (struct iwl_priv*,struct iwl_host_cmd*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct iwl_priv *priv, struct iwl_rxon_context *ctx,
		    struct iwl_link_quality_cmd *lq, u8 flags, bool init)
{
	int ret = 0;
	struct iwl_host_cmd cmd = {
		.id = REPLY_TX_LINK_QUALITY_CMD,
		.len = sizeof(struct iwl_link_quality_cmd), 
		.flags = flags,
		.data = lq, 
	};

	if (FUNC1(lq->sta_id == IWL_INVALID_STATION))
		return -EINVAL;


	FUNC5(&priv->sta_lock);
	if (!(priv->stations[lq->sta_id].used & IWL_STA_DRIVER_ACTIVE)) {
		FUNC6(&priv->sta_lock);
		return -EINVAL;
	}
	FUNC6(&priv->sta_lock);

	FUNC3(priv, lq);
	if (FUNC1(init && (cmd.flags & CMD_ASYNC)))
		return -EINVAL;

	if (FUNC2(priv, ctx, lq))
		ret = FUNC4(priv, &cmd);
	else
		ret = -EINVAL;

	if (cmd.flags & CMD_ASYNC)
		return ret;

	if (init) {
		FUNC0(priv, "init LQ command complete, "
			       "clearing sta addition status for sta %d\n",
			       lq->sta_id);
		FUNC5(&priv->sta_lock);
		priv->stations[lq->sta_id].used &= ~IWL_STA_UCODE_INPROGRESS;
		FUNC6(&priv->sta_lock);
	}
	return ret;
}