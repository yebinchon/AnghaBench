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
typedef  int u16 ;
struct rtl818x_rf_ops {int dummy; } ;
struct rtl8187_priv {int /*<<< orphan*/  is_rtl8187b; } ;
struct ieee80211_hw {struct rtl8187_priv* priv; } ;

/* Variables and functions */
 struct rtl818x_rf_ops const rtl8225_ops ; 
 int FUNC0 (struct ieee80211_hw*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int /*<<< orphan*/ ,int) ; 
 struct rtl818x_rf_ops const rtl8225z2_b_ops ; 
 struct rtl818x_rf_ops const rtl8225z2_ops ; 

const struct rtl818x_rf_ops * FUNC2(struct ieee80211_hw *dev)
{
	u16 reg8, reg9;
	struct rtl8187_priv *priv = dev->priv;

	if (!priv->is_rtl8187b) {
		FUNC1(dev, 0, 0x1B7);

		reg8 = FUNC0(dev, 8);
		reg9 = FUNC0(dev, 9);

		FUNC1(dev, 0, 0x0B7);

		if (reg8 != 0x588 || reg9 != 0x700)
			return &rtl8225_ops;

		return &rtl8225z2_ops;
	} else
		return &rtl8225z2_b_ops;
}