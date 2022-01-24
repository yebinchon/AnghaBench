#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct neighbour {int nud_state; int /*<<< orphan*/  ha; TYPE_2__* dev; scalar_t__ primary_key; TYPE_1__* tbl; } ;
struct l2t_entry {int ifindex; scalar_t__ state; int /*<<< orphan*/  lock; int /*<<< orphan*/  dmac; struct sk_buff* arpq_head; int /*<<< orphan*/ * arpq_tail; struct neighbour* neigh; int /*<<< orphan*/  refcnt; struct l2t_entry* next; } ;
struct l2t_data {int /*<<< orphan*/  lock; TYPE_3__* l2tab; } ;
struct adapter {struct l2t_data* l2t; } ;
struct TYPE_6__ {struct l2t_entry* first; } ;
struct TYPE_5__ {int ifindex; } ;
struct TYPE_4__ {int key_len; } ;

/* Variables and functions */
 scalar_t__ L2T_STATE_RESOLVING ; 
 scalar_t__ L2T_STATE_STALE ; 
 scalar_t__ L2T_STATE_VALID ; 
 int NUD_CONNECTED ; 
 int NUD_FAILED ; 
 int NUD_STALE ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct l2t_entry*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,struct sk_buff*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct l2t_entry*,struct neighbour*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct adapter*,struct l2t_entry*,int) ; 

void FUNC13(struct adapter *adap, struct neighbour *neigh)
{
	struct l2t_entry *e;
	struct sk_buff *arpq = NULL;
	struct l2t_data *d = adap->l2t;
	int addr_len = neigh->tbl->key_len;
	u32 *addr = (u32 *) neigh->primary_key;
	int ifidx = neigh->dev->ifindex;
	int hash = FUNC0(addr, addr_len, ifidx);

	FUNC6(&d->lock);
	for (e = d->l2tab[hash].first; e; e = e->next)
		if (!FUNC1(e, addr) && e->ifindex == ifidx) {
			FUNC9(&e->lock);
			if (FUNC2(&e->refcnt))
				goto found;
			FUNC10(&e->lock);
			break;
		}
	FUNC8(&d->lock);
	return;

 found:
	FUNC7(&d->lock);

	if (neigh != e->neigh)
		FUNC5(e, neigh);

	if (e->state == L2T_STATE_RESOLVING) {
		if (neigh->nud_state & NUD_FAILED) {
			arpq = e->arpq_head;
			e->arpq_head = e->arpq_tail = NULL;
		} else if ((neigh->nud_state & (NUD_CONNECTED | NUD_STALE)) &&
			   e->arpq_head) {
			FUNC12(adap, e, 1);
		}
	} else {
		e->state = neigh->nud_state & NUD_CONNECTED ?
			L2T_STATE_VALID : L2T_STATE_STALE;
		if (FUNC4(e->dmac, neigh->ha, sizeof(e->dmac)))
			FUNC12(adap, e, 0);
	}

	FUNC11(&e->lock);

	if (arpq)
		FUNC3(adap, arpq);
}