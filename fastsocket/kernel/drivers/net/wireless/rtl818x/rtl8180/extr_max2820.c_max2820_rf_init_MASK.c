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
struct rtl8180_priv {TYPE_1__* map; } ;
struct ieee80211_hw {struct rtl8180_priv* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  CONFIG2; } ;

/* Variables and functions */
 int RTL818X_CONFIG2_ANTENNA_DIV ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int,int) ; 
 int FUNC3 (struct rtl8180_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int,int) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_hw *dev)
{
	struct rtl8180_priv *priv = dev->priv;

	/* MAXIM from netbsd driver */
	FUNC4(dev, 0, 0x007); /* test mode as indicated in datasheet */
	FUNC4(dev, 1, 0x01e); /* enable register */
	FUNC4(dev, 2, 0x001); /* synt register */

	FUNC0(dev, NULL);

	FUNC4(dev, 4, 0x313); /* rx register */

	/* PA is driven directly by the BB, we keep the MAXIM bias
	 * at the highest value in case that setting it to lower
	 * values may introduce some further attenuation somewhere..
	 */
	FUNC4(dev, 5, 0x00f);

	/* baseband configuration */
	FUNC2(dev, 0, 0x88); /* sys1       */
	FUNC2(dev, 3, 0x08); /* txagc      */
	FUNC2(dev, 4, 0xf8); /* lnadet     */
	FUNC2(dev, 5, 0x90); /* ifagcinit  */
	FUNC2(dev, 6, 0x1a); /* ifagclimit */
	FUNC2(dev, 7, 0x64); /* ifagcdet   */

	FUNC1(dev, 1);

	FUNC2(dev, 0x11, 0x88); /* trl */

	if (FUNC3(priv, &priv->map->CONFIG2) &
	    RTL818X_CONFIG2_ANTENNA_DIV)
		FUNC2(dev, 0x12, 0xc7);
	else
		FUNC2(dev, 0x12, 0x47);

	FUNC2(dev, 0x13, 0x9b);

	FUNC2(dev, 0x19, 0x0);  /* CHESTLIM */
	FUNC2(dev, 0x1a, 0x9f); /* CHSQLIM  */

	FUNC0(dev, NULL);
}