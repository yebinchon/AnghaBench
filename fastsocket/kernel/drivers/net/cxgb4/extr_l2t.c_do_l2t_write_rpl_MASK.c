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
struct l2t_entry {scalar_t__ state; int /*<<< orphan*/  lock; TYPE_2__* neigh; } ;
struct cpl_l2t_write_rpl {scalar_t__ status; } ;
struct adapter {TYPE_1__* l2t; int /*<<< orphan*/  pdev_dev; } ;
struct TYPE_4__ {int nud_state; } ;
struct TYPE_3__ {struct l2t_entry* l2tab; } ;

/* Variables and functions */
 scalar_t__ CPL_ERR_NONE ; 
 unsigned int F_SYNC_WR ; 
 unsigned int FUNC0 (struct cpl_l2t_write_rpl const*) ; 
 int L2T_SIZE ; 
 scalar_t__ L2T_STATE_STALE ; 
 scalar_t__ L2T_STATE_SWITCHING ; 
 scalar_t__ L2T_STATE_VALID ; 
 int NUD_STALE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,struct l2t_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

void FUNC6(struct adapter *adap, const struct cpl_l2t_write_rpl *rpl)
{
	unsigned int tid = FUNC0(rpl);
	unsigned int idx = tid & (L2T_SIZE - 1);

	if (FUNC5(rpl->status != CPL_ERR_NONE)) {
		FUNC1(adap->pdev_dev,
			"Unexpected L2T_WRITE_RPL status %u for entry %u\n",
			rpl->status, idx);
		return;
	}

	if (tid & F_SYNC_WR) {
		struct l2t_entry *e = &adap->l2t->l2tab[idx];

		FUNC3(&e->lock);
		if (e->state != L2T_STATE_SWITCHING) {
			FUNC2(adap, e);
			e->state = (e->neigh->nud_state & NUD_STALE) ?
					L2T_STATE_STALE : L2T_STATE_VALID;
		}
		FUNC4(&e->lock);
	}
}