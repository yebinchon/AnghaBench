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
typedef  int /*<<< orphan*/  u8 ;
struct iwl_rxon_context {int /*<<< orphan*/  rxon_cmd; } ;
struct iwl_rxon_cmd {int /*<<< orphan*/  dev_type; int /*<<< orphan*/  filter_flags; } ;
struct iwl_priv {int /*<<< orphan*/  notif_wait; } ;
struct iwl_notification_wait {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  CMD_SYNC ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,char*,...) ; 
#define  REPLY_WIPAN_DEACTIVATION_COMPLETE 128 
 int /*<<< orphan*/  RXON_DEV_TYPE_P2P ; 
 int /*<<< orphan*/  RXON_FILTER_ASSOC_MSK ; 
 int FUNC2 (struct iwl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwl_rxon_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct iwl_notification_wait*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct iwl_notification_wait*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct iwl_notification_wait*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct iwl_priv *priv,
			      struct iwl_rxon_context *ctx,
			      struct iwl_rxon_cmd *send)
{
	struct iwl_notification_wait disable_wait;
	__le32 old_filter = send->filter_flags;
	u8 old_dev_type = send->dev_type;
	int ret;
	static const u8 deactivate_cmd[] = {
		REPLY_WIPAN_DEACTIVATION_COMPLETE
	};

	FUNC3(&priv->notif_wait, &disable_wait,
				   deactivate_cmd, FUNC0(deactivate_cmd),
				   NULL, NULL);

	send->filter_flags &= ~RXON_FILTER_ASSOC_MSK;
	send->dev_type = RXON_DEV_TYPE_P2P;
	ret = FUNC2(priv, ctx->rxon_cmd,
				CMD_SYNC, sizeof(*send), send);

	send->filter_flags = old_filter;
	send->dev_type = old_dev_type;

	if (ret) {
		FUNC1(priv, "Error disabling PAN (%d)\n", ret);
		FUNC4(&priv->notif_wait, &disable_wait);
	} else {
		ret = FUNC5(&priv->notif_wait,
					    &disable_wait, HZ);
		if (ret)
			FUNC1(priv, "Timed out waiting for PAN disable\n");
	}

	return ret;
}