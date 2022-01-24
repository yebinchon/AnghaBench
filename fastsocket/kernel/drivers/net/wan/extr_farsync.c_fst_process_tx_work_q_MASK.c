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
typedef  int u64 ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_TX ; 
 int FST_MAX_CARDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** fst_card_array ; 
 int /*<<< orphan*/  fst_work_q_lock ; 
 int fst_work_txq ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC4(unsigned long /*void **/work_q)
{
	unsigned long flags;
	u64 work_txq;
	int i;

	/*
	 * Grab the queue exclusively
	 */
	FUNC0(DBG_TX, "fst_process_tx_work_q\n");
	FUNC2(&fst_work_q_lock, flags);
	work_txq = fst_work_txq;
	fst_work_txq = 0;
	FUNC3(&fst_work_q_lock, flags);

	/*
	 * Call the bottom half for each card with work waiting
	 */
	for (i = 0; i < FST_MAX_CARDS; i++) {
		if (work_txq & 0x01) {
			if (fst_card_array[i] != NULL) {
				FUNC0(DBG_TX, "Calling tx bh for card %d\n", i);
				FUNC1(fst_card_array[i]);
			}
		}
		work_txq = work_txq >> 1;
	}
}