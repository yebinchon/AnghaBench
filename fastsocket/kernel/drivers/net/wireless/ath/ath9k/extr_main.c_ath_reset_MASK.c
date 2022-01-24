#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {TYPE_2__* txq; } ;
struct ath_softc {TYPE_1__ tx; } ;
struct TYPE_4__ {int /*<<< orphan*/  axq_lock; } ;

/* Variables and functions */
 int ATH9K_NUM_TX_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (struct ath_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*) ; 
 int FUNC3 (struct ath_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_softc*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct ath_softc *sc)
{
	int i, r;

	FUNC2(sc);

	r = FUNC3(sc, NULL);

	for (i = 0; i < ATH9K_NUM_TX_QUEUES; i++) {
		if (!FUNC0(sc, i))
			continue;

		FUNC5(&sc->tx.txq[i].axq_lock);
		FUNC4(sc, &sc->tx.txq[i]);
		FUNC6(&sc->tx.txq[i].axq_lock);
	}

	FUNC1(sc);

	return r;
}