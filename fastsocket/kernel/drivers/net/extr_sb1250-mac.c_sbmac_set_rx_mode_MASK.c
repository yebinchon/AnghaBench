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
struct sbmac_softc {int sbm_devflags; int /*<<< orphan*/  sbm_lock; } ;
struct net_device {int flags; } ;

/* Variables and functions */
 int IFF_PROMISC ; 
 struct sbmac_softc* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct sbmac_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sbmac_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev)
{
	unsigned long flags;
	struct sbmac_softc *sc = FUNC0(dev);

	FUNC3(&sc->sbm_lock, flags);
	if ((dev->flags ^ sc->sbm_devflags) & IFF_PROMISC) {
		/*
		 * Promiscuous changed.
		 */

		if (dev->flags & IFF_PROMISC) {
			FUNC1(sc,1);
		}
		else {
			FUNC1(sc,0);
		}
	}
	FUNC4(&sc->sbm_lock, flags);

	/*
	 * Program the multicasts.  Do this every time.
	 */

	FUNC2(sc);

}