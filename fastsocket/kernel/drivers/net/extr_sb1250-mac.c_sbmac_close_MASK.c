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
struct sbmac_softc {int /*<<< orphan*/  sbm_rxdma; int /*<<< orphan*/  sbm_txdma; int /*<<< orphan*/  mii_bus; int /*<<< orphan*/ * phy_dev; int /*<<< orphan*/  napi; } ;
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int debug ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct sbmac_softc* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct sbmac_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sbmac_state_off ; 

__attribute__((used)) static int FUNC10(struct net_device *dev)
{
	struct sbmac_softc *sc = FUNC3(dev);

	FUNC2(&sc->napi);

	FUNC6(sc->phy_dev);

	FUNC9(sc, sbmac_state_off);

	FUNC4(dev);

	if (debug > 1)
		FUNC7("%s: Shutting down ethercard\n", dev->name);

	FUNC5(sc->phy_dev);
	sc->phy_dev = NULL;

	FUNC1(sc->mii_bus);

	FUNC0(dev->irq, dev);

	FUNC8(&(sc->sbm_txdma));
	FUNC8(&(sc->sbm_rxdma));

	return 0;
}