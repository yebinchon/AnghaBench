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
struct ath_txq {int /*<<< orphan*/  axq_lock; int /*<<< orphan*/  axq_acq; scalar_t__ axq_depth; } ;
struct ath_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(struct ath_softc *sc, struct ath_txq *txq)
{
	bool pending = false;

	FUNC1(&txq->axq_lock);

	if (txq->axq_depth || !FUNC0(&txq->axq_acq))
		pending = true;

	FUNC2(&txq->axq_lock);
	return pending;
}