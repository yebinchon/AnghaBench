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
struct lbtf_private {int surpriseremoved; struct ieee80211_hw* hw; int /*<<< orphan*/  command_timer; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LBTF_DEB_MAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct lbtf_private*) ; 

int FUNC6(struct lbtf_private *priv)
{
	struct ieee80211_hw *hw = priv->hw;

	FUNC3(LBTF_DEB_MAIN);

	priv->surpriseremoved = 1;
	FUNC0(&priv->command_timer);
	FUNC5(priv);
	priv->hw = NULL;
	FUNC2(hw);
	FUNC1(hw);

    FUNC4(LBTF_DEB_MAIN);
	return 0;
}