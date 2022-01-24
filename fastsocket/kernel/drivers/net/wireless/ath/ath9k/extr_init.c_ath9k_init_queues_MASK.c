#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * txq_max_pending; TYPE_2__** txq_map; } ;
struct TYPE_5__ {int /*<<< orphan*/  cabqReadytime; } ;
struct TYPE_8__ {void* cabq; int /*<<< orphan*/  beaconq; } ;
struct ath_softc {TYPE_3__ tx; TYPE_1__ config; TYPE_4__ beacon; int /*<<< orphan*/  sc_ah; } ;
struct TYPE_6__ {int mac80211_qnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH9K_TX_QUEUE_CAB ; 
 int /*<<< orphan*/  ATH9K_TX_QUEUE_DATA ; 
 int /*<<< orphan*/  ATH_CABQ_READY_TIME ; 
 int /*<<< orphan*/  ATH_MAX_QDEPTH ; 
 int IEEE80211_NUM_ACS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*) ; 
 void* FUNC2 (struct ath_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct ath_softc *sc)
{
	int i = 0;

	sc->beacon.beaconq = FUNC0(sc->sc_ah);
	sc->beacon.cabq = FUNC2(sc, ATH9K_TX_QUEUE_CAB, 0);

	sc->config.cabqReadytime = ATH_CABQ_READY_TIME;
	FUNC1(sc);

	for (i = 0; i < IEEE80211_NUM_ACS; i++) {
		sc->tx.txq_map[i] = FUNC2(sc, ATH9K_TX_QUEUE_DATA, i);
		sc->tx.txq_map[i]->mac80211_qnum = i;
		sc->tx.txq_max_pending[i] = ATH_MAX_QDEPTH;
	}
	return 0;
}