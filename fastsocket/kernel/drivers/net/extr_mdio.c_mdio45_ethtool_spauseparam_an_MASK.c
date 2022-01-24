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
struct mdio_if_info {int mmds; int (* mdio_read ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  prtad; int /*<<< orphan*/  dev; int /*<<< orphan*/  (* mdio_write ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;} ;
struct ethtool_pauseparam {scalar_t__ tx_pause; scalar_t__ rx_pause; scalar_t__ autoneg; } ;

/* Variables and functions */
 int ADVERTISE_PAUSE_ASYM ; 
 int ADVERTISE_PAUSE_CAP ; 
 int FLOW_CTRL_RX ; 
 int FLOW_CTRL_TX ; 
 int /*<<< orphan*/  MDIO_AN_ADVERTISE ; 
 int MDIO_DEVS_AN ; 
 int /*<<< orphan*/  MDIO_MMD_AN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mdio_if_info const*) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC5(const struct mdio_if_info *mdio,
				   const struct ethtool_pauseparam *ecmd)
{
	int adv, old_adv;

	FUNC0(!(mdio->mmds & MDIO_DEVS_AN));

	old_adv = mdio->mdio_read(mdio->dev, mdio->prtad, MDIO_MMD_AN,
				  MDIO_AN_ADVERTISE);
	adv = old_adv & ~(ADVERTISE_PAUSE_CAP | ADVERTISE_PAUSE_ASYM);
	if (ecmd->autoneg)
		adv |= FUNC2(
			(ecmd->rx_pause ? FLOW_CTRL_RX : 0) |
			(ecmd->tx_pause ? FLOW_CTRL_TX : 0));
	if (adv != old_adv) {
		mdio->mdio_write(mdio->dev, mdio->prtad, MDIO_MMD_AN,
				 MDIO_AN_ADVERTISE, adv);
		FUNC1(mdio);
	}
}