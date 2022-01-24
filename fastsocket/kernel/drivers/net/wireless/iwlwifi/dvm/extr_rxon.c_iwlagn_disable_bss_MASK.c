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
struct iwl_rxon_context {int /*<<< orphan*/  rxon_cmd; } ;
struct iwl_rxon_cmd {int /*<<< orphan*/  filter_flags; } ;
struct iwl_priv {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SYNC ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*,int) ; 
 int /*<<< orphan*/  RXON_FILTER_ASSOC_MSK ; 
 int FUNC1 (struct iwl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwl_rxon_cmd*) ; 

__attribute__((used)) static int FUNC2(struct iwl_priv *priv,
			      struct iwl_rxon_context *ctx,
			      struct iwl_rxon_cmd *send)
{
	__le32 old_filter = send->filter_flags;
	int ret;

	send->filter_flags &= ~RXON_FILTER_ASSOC_MSK;
	ret = FUNC1(priv, ctx->rxon_cmd,
				CMD_SYNC, sizeof(*send), send);

	send->filter_flags = old_filter;

	if (ret)
		FUNC0(priv,
			"Error clearing ASSOC_MSK on BSS (%d)\n", ret);

	return ret;
}