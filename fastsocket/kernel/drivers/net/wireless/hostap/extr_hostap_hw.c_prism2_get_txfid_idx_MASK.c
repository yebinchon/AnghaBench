#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int next_txfid; scalar_t__* intransmitfid; TYPE_2__* dev; int /*<<< orphan*/  txfidlock; } ;
typedef  TYPE_3__ local_info_t ;
struct TYPE_5__ {int /*<<< orphan*/  tx_dropped; } ;
struct TYPE_6__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_EXTRA2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int PRISM2_TXFID_COUNT ; 
 scalar_t__ PRISM2_TXFID_EMPTY ; 
 scalar_t__ PRISM2_TXFID_RESERVED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(local_info_t *local)
{
	int idx, end;
	unsigned long flags;

	FUNC1(&local->txfidlock, flags);
	end = idx = local->next_txfid;
	do {
		if (local->intransmitfid[idx] == PRISM2_TXFID_EMPTY) {
			local->intransmitfid[idx] = PRISM2_TXFID_RESERVED;
			FUNC2(&local->txfidlock, flags);
			return idx;
		}
		idx++;
		if (idx >= PRISM2_TXFID_COUNT)
			idx = 0;
	} while (idx != end);
	FUNC2(&local->txfidlock, flags);

	FUNC0(DEBUG_EXTRA2, "prism2_get_txfid_idx: no room in txfid buf: "
	       "packet dropped\n");
	local->dev->stats.tx_dropped++;

	return -1;
}