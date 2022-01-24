#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct rtl8180_priv {TYPE_2__* map; TYPE_1__* channels; } ;
struct ieee80211_hw {struct rtl8180_priv* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  TX_GAIN_OFDM; int /*<<< orphan*/  TX_GAIN_CCK; } ;
struct TYPE_3__ {int hw_value; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8180_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8180_priv*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,int,int) ; 
 int* rtl8225z2_tx_power_cck ; 
 int* rtl8225z2_tx_power_cck_A ; 
 int* rtl8225z2_tx_power_cck_B ; 
 int* rtl8225z2_tx_power_cck_ch14 ; 

__attribute__((used)) static void FUNC6(struct ieee80211_hw *dev, int channel)
{
	struct rtl8180_priv *priv = dev->priv;
	u8 cck_power, ofdm_power;
	const u8 *tmp;
	int i;

	cck_power = priv->channels[channel - 1].hw_value & 0xFF;
	ofdm_power = priv->channels[channel - 1].hw_value >> 8;

	if (channel == 14)
		tmp = rtl8225z2_tx_power_cck_ch14;
	else if (cck_power == 12)
		tmp = rtl8225z2_tx_power_cck_B;
	else if (cck_power == 13)
		tmp = rtl8225z2_tx_power_cck_A;
	else
		tmp = rtl8225z2_tx_power_cck;

	for (i = 0; i < 8; i++)
		FUNC4(dev, 0x44 + i, *tmp++);

	cck_power = FUNC0(cck_power, (u8)35);
	if (cck_power == 13 || cck_power == 14)
		cck_power = 12;
	if (cck_power >= 15)
		cck_power -= 2;

	FUNC3(priv, &priv->map->TX_GAIN_CCK, cck_power);
	FUNC2(priv, &priv->map->TX_GAIN_CCK);
	FUNC1(1);

	ofdm_power = FUNC0(ofdm_power, (u8)35);
	FUNC3(priv, &priv->map->TX_GAIN_OFDM, ofdm_power);

	FUNC5(dev, 2, 0x62);
	FUNC5(dev, 5, 0x00);
	FUNC5(dev, 6, 0x40);
	FUNC5(dev, 7, 0x00);
	FUNC5(dev, 8, 0x40);

	FUNC1(1);
}