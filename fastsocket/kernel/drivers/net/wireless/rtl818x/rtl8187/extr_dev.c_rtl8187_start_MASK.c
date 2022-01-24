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
typedef  int u32 ;
struct rtl8187_priv {int rx_conf; int /*<<< orphan*/  conf_mutex; int /*<<< orphan*/  work; TYPE_1__* map; scalar_t__ is_rtl8187b; struct ieee80211_hw* dev; int /*<<< orphan*/  anchored; } ;
struct ieee80211_hw {struct rtl8187_priv* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  CMD; int /*<<< orphan*/  TX_CONF; int /*<<< orphan*/  TX_AGC_CTL; int /*<<< orphan*/  CW_CONF; int /*<<< orphan*/  RX_CONF; int /*<<< orphan*/ * MAR; int /*<<< orphan*/  INT_MASK; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int RETRY_COUNT ; 
 int RTL818X_CMD_RX_ENABLE ; 
 int RTL818X_CMD_TX_ENABLE ; 
 int RTL818X_CW_CONF_PERPACKET_CW_SHIFT ; 
 int RTL818X_CW_CONF_PERPACKET_RETRY_SHIFT ; 
 int RTL818X_RX_CONF_BROADCAST ; 
 int RTL818X_RX_CONF_BSSID ; 
 int RTL818X_RX_CONF_DATA ; 
 int RTL818X_RX_CONF_MGMT ; 
 int RTL818X_RX_CONF_MULTICAST ; 
 int RTL818X_RX_CONF_NICMAC ; 
 int RTL818X_RX_CONF_ONLYERLPKT ; 
 int RTL818X_RX_CONF_RX_AUTORESETPHY ; 
 int RTL818X_TX_AGC_CTL_FEEDBACK_ANT ; 
 int RTL818X_TX_AGC_CTL_PERPACKET_ANTSEL_SHIFT ; 
 int RTL818X_TX_AGC_CTL_PERPACKET_GAIN_SHIFT ; 
 int RTL818X_TX_CONF_CW_MIN ; 
 int RTL818X_TX_CONF_DISREQQSIZE ; 
 int RTL818X_TX_CONF_HW_SEQNUM ; 
 int RTL818X_TX_CONF_NO_ICV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  rtl8187_work ; 
 int FUNC6 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*) ; 
 int FUNC8 (struct rtl8187_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct rtl8187_priv*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct rtl8187_priv*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (struct rtl8187_priv*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC12(struct ieee80211_hw *dev)
{
	struct rtl8187_priv *priv = dev->priv;
	u32 reg;
	int ret;

	FUNC2(&priv->conf_mutex);

	ret = (!priv->is_rtl8187b) ? FUNC4(dev) :
				     FUNC6(dev);
	if (ret)
		goto rtl8187_start_exit;

	FUNC1(&priv->anchored);
	priv->dev = dev;

	if (priv->is_rtl8187b) {
		reg = RTL818X_RX_CONF_MGMT |
		      RTL818X_RX_CONF_DATA |
		      RTL818X_RX_CONF_BROADCAST |
		      RTL818X_RX_CONF_NICMAC |
		      RTL818X_RX_CONF_BSSID |
		      (7 << 13 /* RX FIFO threshold NONE */) |
		      (7 << 10 /* MAX RX DMA */) |
		      RTL818X_RX_CONF_RX_AUTORESETPHY |
		      RTL818X_RX_CONF_ONLYERLPKT |
		      RTL818X_RX_CONF_MULTICAST;
		priv->rx_conf = reg;
		FUNC10(priv, &priv->map->RX_CONF, reg);

		reg = FUNC8(priv, &priv->map->TX_AGC_CTL);
		reg &= ~RTL818X_TX_AGC_CTL_PERPACKET_GAIN_SHIFT;
		reg &= ~RTL818X_TX_AGC_CTL_PERPACKET_ANTSEL_SHIFT;
		reg &= ~RTL818X_TX_AGC_CTL_FEEDBACK_ANT;
		FUNC11(priv, &priv->map->TX_AGC_CTL, reg);

		FUNC10(priv, &priv->map->TX_CONF,
				  RTL818X_TX_CONF_HW_SEQNUM |
				  RTL818X_TX_CONF_DISREQQSIZE |
				  (RETRY_COUNT << 8  /* short retry limit */) |
				  (RETRY_COUNT << 0  /* long retry limit */) |
				  (7 << 21 /* MAX TX DMA */));
		FUNC5(dev);
		FUNC7(dev);
		goto rtl8187_start_exit;
	}

	FUNC9(priv, &priv->map->INT_MASK, 0xFFFF);

	FUNC10(priv, &priv->map->MAR[0], ~0);
	FUNC10(priv, &priv->map->MAR[1], ~0);

	FUNC5(dev);

	reg = RTL818X_RX_CONF_ONLYERLPKT |
	      RTL818X_RX_CONF_RX_AUTORESETPHY |
	      RTL818X_RX_CONF_BSSID |
	      RTL818X_RX_CONF_MGMT |
	      RTL818X_RX_CONF_DATA |
	      (7 << 13 /* RX FIFO threshold NONE */) |
	      (7 << 10 /* MAX RX DMA */) |
	      RTL818X_RX_CONF_BROADCAST |
	      RTL818X_RX_CONF_NICMAC;

	priv->rx_conf = reg;
	FUNC10(priv, &priv->map->RX_CONF, reg);

	reg = FUNC8(priv, &priv->map->CW_CONF);
	reg &= ~RTL818X_CW_CONF_PERPACKET_CW_SHIFT;
	reg |= RTL818X_CW_CONF_PERPACKET_RETRY_SHIFT;
	FUNC11(priv, &priv->map->CW_CONF, reg);

	reg = FUNC8(priv, &priv->map->TX_AGC_CTL);
	reg &= ~RTL818X_TX_AGC_CTL_PERPACKET_GAIN_SHIFT;
	reg &= ~RTL818X_TX_AGC_CTL_PERPACKET_ANTSEL_SHIFT;
	reg &= ~RTL818X_TX_AGC_CTL_FEEDBACK_ANT;
	FUNC11(priv, &priv->map->TX_AGC_CTL, reg);

	reg  = RTL818X_TX_CONF_CW_MIN |
	       (7 << 21 /* MAX TX DMA */) |
	       RTL818X_TX_CONF_NO_ICV;
	FUNC10(priv, &priv->map->TX_CONF, reg);

	reg = FUNC8(priv, &priv->map->CMD);
	reg |= RTL818X_CMD_TX_ENABLE;
	reg |= RTL818X_CMD_RX_ENABLE;
	FUNC11(priv, &priv->map->CMD, reg);
	FUNC0(&priv->work, rtl8187_work);

rtl8187_start_exit:
	FUNC3(&priv->conf_mutex);
	return ret;
}