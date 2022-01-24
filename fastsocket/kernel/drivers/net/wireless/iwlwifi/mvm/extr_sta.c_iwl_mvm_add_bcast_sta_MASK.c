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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct iwl_mvm_vif {int /*<<< orphan*/  color; int /*<<< orphan*/  id; } ;
struct iwl_mvm_int_sta {int dummy; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct iwl_mvm*,struct iwl_mvm_int_sta*,int const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct iwl_mvm*,struct iwl_mvm_int_sta*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,struct iwl_mvm_int_sta*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 struct iwl_mvm_vif* FUNC4 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct iwl_mvm *mvm, struct ieee80211_vif *vif,
			  struct iwl_mvm_int_sta *bsta)
{
	struct iwl_mvm_vif *mvmvif = FUNC4(vif);
	static const u8 baddr[] = {0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF};
	u32 qmask;
	int ret;

	FUNC5(&mvm->mutex);

	qmask = FUNC3(mvm, vif);
	ret = FUNC1(mvm, bsta, qmask);
	if (ret)
		return ret;

	ret = FUNC0(mvm, bsta, baddr,
					 mvmvif->id, mvmvif->color);

	if (ret)
		FUNC2(mvm, bsta);
	return ret;
}