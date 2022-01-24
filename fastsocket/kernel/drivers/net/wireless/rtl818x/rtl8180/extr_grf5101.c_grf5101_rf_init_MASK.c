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
struct rtl8180_priv {int csthreshold; TYPE_1__* map; int /*<<< orphan*/  anaparam; } ;
struct ieee80211_hw {struct rtl8180_priv* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  CONFIG2; } ;

/* Variables and functions */
 int RTL818X_CONFIG2_ANTENNA_DIV ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8180_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int,int) ; 
 int FUNC3 (struct rtl8180_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int,int) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_hw *dev)
{
	struct rtl8180_priv *priv = dev->priv;

	FUNC1(priv, priv->anaparam);

	FUNC4(dev, 0x1f, 0x0);
	FUNC4(dev, 0x1f, 0x0);
	FUNC4(dev, 0x1f, 0x40);
	FUNC4(dev, 0x1f, 0x60);
	FUNC4(dev, 0x1f, 0x61);
	FUNC4(dev, 0x1f, 0x61);
	FUNC4(dev, 0x00, 0xae4);
	FUNC4(dev, 0x1f, 0x1);
	FUNC4(dev, 0x1f, 0x41);
	FUNC4(dev, 0x1f, 0x61);

	FUNC4(dev, 0x01, 0x1a23);
	FUNC4(dev, 0x02, 0x4971);
	FUNC4(dev, 0x03, 0x41de);
	FUNC4(dev, 0x04, 0x2d80);
	FUNC4(dev, 0x05, 0x68ff);	/* 0x61ff original value */
	FUNC4(dev, 0x06, 0x0);
	FUNC4(dev, 0x07, 0x0);
	FUNC4(dev, 0x08, 0x7533);
	FUNC4(dev, 0x09, 0xc401);
	FUNC4(dev, 0x0a, 0x0);
	FUNC4(dev, 0x0c, 0x1c7);
	FUNC4(dev, 0x0d, 0x29d3);
	FUNC4(dev, 0x0e, 0x2e8);
	FUNC4(dev, 0x10, 0x192);
	FUNC4(dev, 0x11, 0x248);
	FUNC4(dev, 0x12, 0x0);
	FUNC4(dev, 0x13, 0x20c4);
	FUNC4(dev, 0x14, 0xf4fc);
	FUNC4(dev, 0x15, 0x0);
	FUNC4(dev, 0x16, 0x1500);

	FUNC4(dev, 0x07, 0x1000);

	/* baseband configuration */
	FUNC2(dev, 0, 0xa8);
	FUNC2(dev, 3, 0x0);
	FUNC2(dev, 4, 0xc0);
	FUNC2(dev, 5, 0x90);
	FUNC2(dev, 6, 0x1e);
	FUNC2(dev, 7, 0x64);

	FUNC0(dev, 1);

	FUNC2(dev, 0x11, 0x88);

	if (FUNC3(priv, &priv->map->CONFIG2) &
	    RTL818X_CONFIG2_ANTENNA_DIV)
		FUNC2(dev, 0x12, 0xc0); /* enable ant diversity */
	else
		FUNC2(dev, 0x12, 0x40); /* disable ant diversity */

	FUNC2(dev, 0x13, 0x90 | priv->csthreshold);

	FUNC2(dev, 0x19, 0x0);
	FUNC2(dev, 0x1a, 0xa0);
	FUNC2(dev, 0x1b, 0x44);
}