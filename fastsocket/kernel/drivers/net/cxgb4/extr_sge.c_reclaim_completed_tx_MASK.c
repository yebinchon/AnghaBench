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
struct sge_txq {int in_use; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int MAX_TX_RECLAIM ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,struct sge_txq*,int,int) ; 
 int FUNC1 (struct sge_txq*) ; 

__attribute__((used)) static inline void FUNC2(struct adapter *adap, struct sge_txq *q,
					bool unmap)
{
	int avail = FUNC1(q);

	if (avail) {
		/*
		 * Limit the amount of clean up work we do at a time to keep
		 * the Tx lock hold time O(1).
		 */
		if (avail > MAX_TX_RECLAIM)
			avail = MAX_TX_RECLAIM;

		FUNC0(adap, q, avail, unmap);
		q->in_use -= avail;
	}
}