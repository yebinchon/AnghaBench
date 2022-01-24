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
struct sbmac_softc {scalar_t__ sbm_link; scalar_t__ sbm_speed; scalar_t__ sbm_duplex; int sbm_pause; int sbm_fc; scalar_t__ sbm_state; int /*<<< orphan*/  sbm_lock; struct phy_device* phy_dev; } ;
struct phy_device {scalar_t__ link; scalar_t__ speed; scalar_t__ duplex; int pause; } ;
struct net_device {int /*<<< orphan*/  name; } ;
typedef  enum sbmac_fc { ____Placeholder_sbmac_fc } sbmac_fc ;

/* Variables and functions */
 scalar_t__ DUPLEX_FULL ; 
 int debug ; 
 struct sbmac_softc* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (struct sbmac_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct sbmac_softc*) ; 
 scalar_t__ sbmac_duplex_none ; 
 int sbmac_fc_collision ; 
 void* sbmac_fc_disabled ; 
 int sbmac_fc_frame ; 
 scalar_t__ sbmac_speed_none ; 
 scalar_t__ sbmac_state_off ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev)
{
	struct sbmac_softc *sc = FUNC0(dev);
	struct phy_device *phy_dev = sc->phy_dev;
	unsigned long flags;
	enum sbmac_fc fc;
	int link_chg, speed_chg, duplex_chg, pause_chg, fc_chg;

	link_chg = (sc->sbm_link != phy_dev->link);
	speed_chg = (sc->sbm_speed != phy_dev->speed);
	duplex_chg = (sc->sbm_duplex != phy_dev->duplex);
	pause_chg = (sc->sbm_pause != phy_dev->pause);

	if (!link_chg && !speed_chg && !duplex_chg && !pause_chg)
		return;					/* Hmmm... */

	if (!phy_dev->link) {
		if (link_chg) {
			sc->sbm_link = phy_dev->link;
			sc->sbm_speed = sbmac_speed_none;
			sc->sbm_duplex = sbmac_duplex_none;
			sc->sbm_fc = sbmac_fc_disabled;
			sc->sbm_pause = -1;
			FUNC2("%s: link unavailable\n", dev->name);
		}
		return;
	}

	if (phy_dev->duplex == DUPLEX_FULL) {
		if (phy_dev->pause)
			fc = sbmac_fc_frame;
		else
			fc = sbmac_fc_disabled;
	} else
		fc = sbmac_fc_collision;
	fc_chg = (sc->sbm_fc != fc);

	FUNC2("%s: link available: %dbase-%cD\n", dev->name, phy_dev->speed,
		phy_dev->duplex == DUPLEX_FULL ? 'F' : 'H');

	FUNC5(&sc->sbm_lock, flags);

	sc->sbm_speed = phy_dev->speed;
	sc->sbm_duplex = phy_dev->duplex;
	sc->sbm_fc = fc;
	sc->sbm_pause = phy_dev->pause;
	sc->sbm_link = phy_dev->link;

	if ((speed_chg || duplex_chg || fc_chg) &&
	    sc->sbm_state != sbmac_state_off) {
		/*
		 * something changed, restart the channel
		 */
		if (debug > 1)
			FUNC1("%s: restarting channel "
				 "because PHY state changed\n", dev->name);
		FUNC4(sc);
		FUNC3(sc);
	}

	FUNC6(&sc->sbm_lock, flags);
}