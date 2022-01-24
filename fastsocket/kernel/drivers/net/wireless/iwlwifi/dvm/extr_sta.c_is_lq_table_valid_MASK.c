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
struct TYPE_5__ {int channel; } ;
struct TYPE_4__ {scalar_t__ enabled; } ;
struct iwl_rxon_context {TYPE_2__ active; TYPE_1__ ht; } ;
struct iwl_priv {int dummy; } ;
struct iwl_link_quality_cmd {TYPE_3__* rs_table; } ;
struct TYPE_6__ {int /*<<< orphan*/  rate_n_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*,int) ; 
 int LINK_QUAL_MAX_RETRY_NUM ; 
 int RATE_MCS_HT_MSK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct iwl_priv *priv,
			      struct iwl_rxon_context *ctx,
			      struct iwl_link_quality_cmd *lq)
{
	int i;

	if (ctx->ht.enabled)
		return true;

	FUNC0(priv, "Channel %u is not an HT channel\n",
		       ctx->active.channel);
	for (i = 0; i < LINK_QUAL_MAX_RETRY_NUM; i++) {
		if (FUNC1(lq->rs_table[i].rate_n_flags) &
		    RATE_MCS_HT_MSK) {
			FUNC0(priv,
				       "index %d of LQ expects HT channel\n",
				       i);
			return false;
		}
	}
	return true;
}