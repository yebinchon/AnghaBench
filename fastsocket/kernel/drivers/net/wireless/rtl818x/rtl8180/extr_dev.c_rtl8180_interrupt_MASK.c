#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct rtl8180_priv {int /*<<< orphan*/  lock; TYPE_1__* map; } ;
struct ieee80211_hw {struct rtl8180_priv* priv; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  INT_STATUS; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int RTL818X_INT_RX_ERR ; 
 int RTL818X_INT_RX_OK ; 
 int RTL818X_INT_TXB_ERR ; 
 int RTL818X_INT_TXB_OK ; 
 int RTL818X_INT_TXH_ERR ; 
 int RTL818X_INT_TXH_OK ; 
 int RTL818X_INT_TXL_ERR ; 
 int RTL818X_INT_TXL_OK ; 
 int RTL818X_INT_TXN_ERR ; 
 int RTL818X_INT_TXN_OK ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int) ; 
 int FUNC2 (struct rtl8180_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8180_priv*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct ieee80211_hw *dev = dev_id;
	struct rtl8180_priv *priv = dev->priv;
	u16 reg;

	FUNC4(&priv->lock);
	reg = FUNC2(priv, &priv->map->INT_STATUS);
	if (FUNC6(reg == 0xFFFF)) {
		FUNC5(&priv->lock);
		return IRQ_HANDLED;
	}

	FUNC3(priv, &priv->map->INT_STATUS, reg);

	if (reg & (RTL818X_INT_TXB_OK | RTL818X_INT_TXB_ERR))
		FUNC1(dev, 3);

	if (reg & (RTL818X_INT_TXH_OK | RTL818X_INT_TXH_ERR))
		FUNC1(dev, 2);

	if (reg & (RTL818X_INT_TXN_OK | RTL818X_INT_TXN_ERR))
		FUNC1(dev, 1);

	if (reg & (RTL818X_INT_TXL_OK | RTL818X_INT_TXL_ERR))
		FUNC1(dev, 0);

	if (reg & (RTL818X_INT_RX_OK | RTL818X_INT_RX_ERR))
		FUNC0(dev);

	FUNC5(&priv->lock);

	return IRQ_HANDLED;
}