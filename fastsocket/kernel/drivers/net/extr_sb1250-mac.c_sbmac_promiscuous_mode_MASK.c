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
typedef  int /*<<< orphan*/  uint64_t ;
struct sbmac_softc {scalar_t__ sbm_state; int /*<<< orphan*/  sbm_rxfilter; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_MAC_ALLPKT_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ sbmac_state_on ; 

__attribute__((used)) static void FUNC2(struct sbmac_softc *sc,int onoff)
{
	uint64_t reg;

	if (sc->sbm_state != sbmac_state_on)
		return;

	if (onoff) {
		reg = FUNC0(sc->sbm_rxfilter);
		reg |= M_MAC_ALLPKT_EN;
		FUNC1(reg, sc->sbm_rxfilter);
	}
	else {
		reg = FUNC0(sc->sbm_rxfilter);
		reg &= ~M_MAC_ALLPKT_EN;
		FUNC1(reg, sc->sbm_rxfilter);
	}
}