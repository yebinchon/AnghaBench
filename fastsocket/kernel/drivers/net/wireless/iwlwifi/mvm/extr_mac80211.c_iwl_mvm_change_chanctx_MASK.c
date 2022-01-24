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
typedef  int /*<<< orphan*/  u32 ;
struct iwl_mvm_phy_ctxt {int dummy; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_chanctx_conf {int /*<<< orphan*/  rx_chains_dynamic; int /*<<< orphan*/  rx_chains_static; int /*<<< orphan*/  def; scalar_t__ drv_priv; } ;

/* Variables and functions */
 struct iwl_mvm* FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,struct iwl_mvm_phy_ctxt*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_hw *hw,
				   struct ieee80211_chanctx_conf *ctx,
				   u32 changed)
{
	struct iwl_mvm *mvm = FUNC0(hw);
	struct iwl_mvm_phy_ctxt *phy_ctxt = (void *)ctx->drv_priv;

	FUNC2(&mvm->mutex);
	FUNC1(mvm, phy_ctxt, &ctx->def,
				 ctx->rx_chains_static,
				 ctx->rx_chains_dynamic);
	FUNC3(&mvm->mutex);
}