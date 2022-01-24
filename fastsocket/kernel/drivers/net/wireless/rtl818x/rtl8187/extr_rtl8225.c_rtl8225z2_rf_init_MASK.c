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
typedef  int /*<<< orphan*/  u8 ;
struct rtl8187_priv {TYPE_1__* map; } ;
struct ieee80211_hw {int /*<<< orphan*/  wiphy; struct rtl8187_priv* priv; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {int /*<<< orphan*/  TX_ANTENNA; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8187_priv*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8187_priv*,int /*<<< orphan*/ *,int) ; 
 int* rtl8225_agc ; 
 int FUNC4 (struct ieee80211_hw*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*,int,int) ; 
 int* rtl8225z2_gain_bg ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_hw*,int) ; 
 int* rtl8225z2_rxgain ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC10(struct ieee80211_hw *dev)
{
	struct rtl8187_priv *priv = dev->priv;
	int i;

	FUNC5(dev, 0x0, 0x2BF);
	FUNC5(dev, 0x1, 0xEE0);
	FUNC5(dev, 0x2, 0x44D);
	FUNC5(dev, 0x3, 0x441);
	FUNC5(dev, 0x4, 0x8C3);
	FUNC5(dev, 0x5, 0xC72);
	FUNC5(dev, 0x6, 0x0E6);
	FUNC5(dev, 0x7, 0x82A);
	FUNC5(dev, 0x8, 0x03F);
	FUNC5(dev, 0x9, 0x335);
	FUNC5(dev, 0xa, 0x9D4);
	FUNC5(dev, 0xb, 0x7BB);
	FUNC5(dev, 0xc, 0x850);
	FUNC5(dev, 0xd, 0xCDF);
	FUNC5(dev, 0xe, 0x02B);
	FUNC5(dev, 0xf, 0x114);
	FUNC1(100);

	FUNC5(dev, 0x0, 0x1B7);

	for (i = 0; i < FUNC0(rtl8225z2_rxgain); i++) {
		FUNC5(dev, 0x1, i + 1);
		FUNC5(dev, 0x2, rtl8225z2_rxgain[i]);
	}

	FUNC5(dev, 0x3, 0x080);
	FUNC5(dev, 0x5, 0x004);
	FUNC5(dev, 0x0, 0x0B7);
	FUNC5(dev, 0x2, 0xc4D);

	FUNC1(200);
	FUNC5(dev, 0x2, 0x44D);
	FUNC1(100);

	if (!(FUNC4(dev, 6) & (1 << 7))) {
		FUNC5(dev, 0x02, 0x0C4D);
		FUNC1(200);
		FUNC5(dev, 0x02, 0x044D);
		FUNC1(100);
		if (!(FUNC4(dev, 6) & (1 << 7)))
			FUNC9(dev->wiphy, "RF Calibration Failed! %x\n",
				   FUNC4(dev, 6));
	}

	FUNC1(200);

	FUNC5(dev, 0x0, 0x2BF);

	for (i = 0; i < FUNC0(rtl8225_agc); i++) {
		FUNC7(dev, 0xB, rtl8225_agc[i]);
		FUNC7(dev, 0xA, 0x80 + i);
	}

	FUNC1(1);

	FUNC7(dev, 0x00, 0x01);
	FUNC7(dev, 0x01, 0x02);
	FUNC7(dev, 0x02, 0x42);
	FUNC7(dev, 0x03, 0x00);
	FUNC7(dev, 0x04, 0x00);
	FUNC7(dev, 0x05, 0x00);
	FUNC7(dev, 0x06, 0x40);
	FUNC7(dev, 0x07, 0x00);
	FUNC7(dev, 0x08, 0x40);
	FUNC7(dev, 0x09, 0xfe);
	FUNC7(dev, 0x0a, 0x08);
	FUNC7(dev, 0x0b, 0x80);
	FUNC7(dev, 0x0c, 0x01);
	FUNC7(dev, 0x0d, 0x43);
	FUNC7(dev, 0x0e, 0xd3);
	FUNC7(dev, 0x0f, 0x38);
	FUNC7(dev, 0x10, 0x84);
	FUNC7(dev, 0x11, 0x07);
	FUNC7(dev, 0x12, 0x20);
	FUNC7(dev, 0x13, 0x20);
	FUNC7(dev, 0x14, 0x00);
	FUNC7(dev, 0x15, 0x40);
	FUNC7(dev, 0x16, 0x00);
	FUNC7(dev, 0x17, 0x40);
	FUNC7(dev, 0x18, 0xef);
	FUNC7(dev, 0x19, 0x19);
	FUNC7(dev, 0x1a, 0x20);
	FUNC7(dev, 0x1b, 0x15);
	FUNC7(dev, 0x1c, 0x04);
	FUNC7(dev, 0x1d, 0xc5);
	FUNC7(dev, 0x1e, 0x95);
	FUNC7(dev, 0x1f, 0x75);
	FUNC7(dev, 0x20, 0x1f);
	FUNC7(dev, 0x21, 0x17);
	FUNC7(dev, 0x22, 0x16);
	FUNC7(dev, 0x23, 0x80);
	FUNC7(dev, 0x24, 0x46);
	FUNC7(dev, 0x25, 0x00);
	FUNC7(dev, 0x26, 0x90);
	FUNC7(dev, 0x27, 0x88);

	FUNC7(dev, 0x0b, rtl8225z2_gain_bg[4 * 3]);
	FUNC7(dev, 0x1b, rtl8225z2_gain_bg[4 * 3 + 1]);
	FUNC7(dev, 0x1d, rtl8225z2_gain_bg[4 * 3 + 2]);
	FUNC7(dev, 0x21, 0x37);

	FUNC6(dev, 0x00, 0x98);
	FUNC6(dev, 0x03, 0x20);
	FUNC6(dev, 0x04, 0x7e);
	FUNC6(dev, 0x05, 0x12);
	FUNC6(dev, 0x06, 0xfc);
	FUNC6(dev, 0x07, 0x78);
	FUNC6(dev, 0x08, 0x2e);
	FUNC6(dev, 0x10, 0x9b);
	FUNC6(dev, 0x11, 0x88);
	FUNC6(dev, 0x12, 0x47);
	FUNC6(dev, 0x13, 0xd0);
	FUNC6(dev, 0x19, 0x00);
	FUNC6(dev, 0x1a, 0xa0);
	FUNC6(dev, 0x1b, 0x08);
	FUNC6(dev, 0x40, 0x86);
	FUNC6(dev, 0x41, 0x8d);
	FUNC6(dev, 0x42, 0x15);
	FUNC6(dev, 0x43, 0x18);
	FUNC6(dev, 0x44, 0x36);
	FUNC6(dev, 0x45, 0x35);
	FUNC6(dev, 0x46, 0x2e);
	FUNC6(dev, 0x47, 0x25);
	FUNC6(dev, 0x48, 0x1c);
	FUNC6(dev, 0x49, 0x12);
	FUNC6(dev, 0x4a, 0x09);
	FUNC6(dev, 0x4b, 0x04);
	FUNC6(dev, 0x4c, 0x05);

	FUNC3(priv, (u8 *)0xFF5B, 0x0D); FUNC1(1);

	FUNC8(dev, 1);

	/* RX antenna default to A */
	FUNC6(dev, 0x10, 0x9b);			/* B: 0xDB */
	FUNC7(dev, 0x26, 0x90);		/* B: 0x10 */

	FUNC3(priv, &priv->map->TX_ANTENNA, 0x03);	/* B: 0x00 */
	FUNC1(1);
	FUNC2(priv, (__le32 *)0xFF94, 0x3dc00002);
}