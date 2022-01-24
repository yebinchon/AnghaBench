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
struct iwl_rxon_context {int dummy; } ;
struct iwl_priv {int dummy; } ;
struct iwl_link_quality_cmd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,struct iwl_rxon_context*,int /*<<< orphan*/ ,struct iwl_link_quality_cmd*) ; 
 struct iwl_link_quality_cmd* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct iwl_link_quality_cmd *
FUNC3(struct iwl_priv *priv, struct iwl_rxon_context *ctx,
		 u8 sta_id)
{
	struct iwl_link_quality_cmd *link_cmd;

	link_cmd = FUNC2(sizeof(struct iwl_link_quality_cmd), GFP_KERNEL);
	if (!link_cmd) {
		FUNC0(priv, "Unable to allocate memory for LQ cmd.\n");
		return NULL;
	}

	FUNC1(priv, ctx, sta_id, link_cmd);

	return link_cmd;
}