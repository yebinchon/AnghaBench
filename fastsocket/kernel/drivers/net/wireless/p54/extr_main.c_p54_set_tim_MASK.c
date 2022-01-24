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
struct p54_common {int dummy; } ;
struct ieee80211_sta {int /*<<< orphan*/  aid; } ;
struct ieee80211_hw {struct p54_common* priv; } ;

/* Variables and functions */
 int FUNC0 (struct p54_common*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct ieee80211_hw *dev, struct ieee80211_sta *sta,
			bool set)
{
	struct p54_common *priv = dev->priv;

	return FUNC0(priv, sta->aid, set);
}