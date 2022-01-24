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
struct phy_device {scalar_t__ link; scalar_t__ duplex; int pause; int /*<<< orphan*/  speed; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct bcm_enet_priv {scalar_t__ old_link; scalar_t__ old_duplex; int old_pause; int pause_rx; int pause_tx; int /*<<< orphan*/  pause_auto; struct phy_device* phydev; } ;

/* Variables and functions */
 scalar_t__ DUPLEX_FULL ; 
 int /*<<< orphan*/  FUNC0 (struct bcm_enet_priv*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_enet_priv*,int,int) ; 
 struct bcm_enet_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev)
{
	struct bcm_enet_priv *priv;
	struct phy_device *phydev;
	int status_changed;

	priv = FUNC2(dev);
	phydev = priv->phydev;
	status_changed = 0;

	if (priv->old_link != phydev->link) {
		status_changed = 1;
		priv->old_link = phydev->link;
	}

	/* reflect duplex change in mac configuration */
	if (phydev->link && phydev->duplex != priv->old_duplex) {
		FUNC0(priv,
				    (phydev->duplex == DUPLEX_FULL) ? 1 : 0);
		status_changed = 1;
		priv->old_duplex = phydev->duplex;
	}

	/* enable flow control if remote advertise it (trust phylib to
	 * check that duplex is full */
	if (phydev->link && phydev->pause != priv->old_pause) {
		int rx_pause_en, tx_pause_en;

		if (phydev->pause) {
			/* pause was advertised by lpa and us */
			rx_pause_en = 1;
			tx_pause_en = 1;
		} else if (!priv->pause_auto) {
			/* pause setting overrided by user */
			rx_pause_en = priv->pause_rx;
			tx_pause_en = priv->pause_tx;
		} else {
			rx_pause_en = 0;
			tx_pause_en = 0;
		}

		FUNC1(priv, rx_pause_en, tx_pause_en);
		status_changed = 1;
		priv->old_pause = phydev->pause;
	}

	if (status_changed) {
		FUNC4("%s: link %s", dev->name, phydev->link ?
			"UP" : "DOWN");
		if (phydev->link)
			FUNC3(" - %d/%s - flow control %s", phydev->speed,
			       DUPLEX_FULL == phydev->duplex ? "full" : "half",
			       phydev->pause == 1 ? "rx&tx" : "off");

		FUNC3("\n");
	}
}