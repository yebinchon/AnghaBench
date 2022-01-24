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
struct iwl_priv {int valid_contexts; int /*<<< orphan*/  mutex; int /*<<< orphan*/  hw_roc_duration; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,char*) ; 
 struct iwl_priv* FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  IWL_RXON_CTX_PAN ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_priv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct ieee80211_hw *hw)
{
	struct iwl_priv *priv = FUNC2(hw);

	if (!(priv->valid_contexts & FUNC0(IWL_RXON_CTX_PAN)))
		return -EOPNOTSUPP;

	FUNC1(priv, "enter\n");
	FUNC5(&priv->mutex);
	FUNC3(priv, priv->hw_roc_duration);
	FUNC4(priv);
	FUNC6(&priv->mutex);
	FUNC1(priv, "leave\n");

	return 0;
}