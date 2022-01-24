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
typedef  scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_callback {scalar_t__* args; } ;
struct iwl_priv {int /*<<< orphan*/  mutex; int /*<<< orphan*/  tst; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 struct iwl_priv* FUNC0 (struct ieee80211_hw*) ; 
 size_t IWL_TM_ATTR_COMMAND ; 
 int IWL_TM_ATTR_MAX ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__,struct sk_buff*,struct netlink_callback*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct nlattr**,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct nlattr*) ; 

int FUNC6(struct ieee80211_hw *hw, struct sk_buff *skb,
		      struct netlink_callback *cb,
		      void *data, int len)
{
	struct iwl_priv *priv = FUNC0(hw);
	int result;
	u32 cmd;

	if (cb->args[3]) {
		/* offset by 1 since commands start at 0 */
		cmd = cb->args[3] - 1;
	} else {
		struct nlattr *tb[IWL_TM_ATTR_MAX];

		result = FUNC2(&priv->tst, tb, data, len);
		if (result)
			return result;

		cmd = FUNC5(tb[IWL_TM_ATTR_COMMAND]);
		cb->args[3] = cmd + 1;
	}

	/* in case multiple accesses to the device happens */
	FUNC3(&priv->mutex);
	result = FUNC1(&priv->tst, cmd, skb, cb);
	FUNC4(&priv->mutex);
	return result;
}