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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct neighbour {TYPE_3__* dev; scalar_t__ primary_key; TYPE_1__* tbl; } ;
struct l2t_entry {int ifindex; scalar_t__ vlan; scalar_t__ lport; int hash; int v6; int /*<<< orphan*/  lock; struct l2t_entry* next; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  addr; int /*<<< orphan*/  state; } ;
struct l2t_data {int /*<<< orphan*/  lock; TYPE_2__* l2tab; } ;
struct TYPE_8__ {scalar_t__ tx_chan; scalar_t__ lport; } ;
struct TYPE_7__ {int ifindex; int flags; int priv_flags; } ;
struct TYPE_6__ {struct l2t_entry* first; } ;
struct TYPE_5__ {int key_len; } ;

/* Variables and functions */
 int IFF_802_1Q_VLAN ; 
 int IFF_LOOPBACK ; 
 int /*<<< orphan*/  L2T_STATE_RESOLVING ; 
 scalar_t__ VLAN_NONE ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct l2t_entry*,int /*<<< orphan*/ *) ; 
 struct l2t_entry* FUNC2 (struct l2t_data*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct l2t_data*,struct l2t_entry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct l2t_entry*,struct neighbour*) ; 
 TYPE_4__* FUNC8 (struct net_device const*) ; 
 int /*<<< orphan*/  FUNC9 (struct l2t_entry*,struct neighbour*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

struct l2t_entry *FUNC15(struct l2t_data *d, struct neighbour *neigh,
				const struct net_device *physdev,
				unsigned int priority)
{
	u8 lport;
	u16 vlan;
	struct l2t_entry *e;
	int addr_len = neigh->tbl->key_len;
	u32 *addr = (u32 *)neigh->primary_key;
	int ifidx = neigh->dev->ifindex;
	int hash = FUNC0(addr, addr_len, ifidx);

	if (neigh->dev->flags & IFF_LOOPBACK)
		lport = FUNC8(physdev)->tx_chan + 4;
	else
		lport = FUNC8(physdev)->lport;

	if (neigh->dev->priv_flags & IFF_802_1Q_VLAN)
		vlan = FUNC12(neigh->dev);
	else
		vlan = VLAN_NONE;

	FUNC13(&d->lock);
	for (e = d->l2tab[hash].first; e; e = e->next)
		if (!FUNC1(e, addr) && e->ifindex == ifidx &&
		    e->vlan == vlan && e->lport == lport) {
			FUNC5(d, e);
			if (FUNC3(&e->refcnt) == 1)
				FUNC9(e, neigh);
			goto done;
		}

	/* Need to allocate a new entry */
	e = FUNC2(d);
	if (e) {
		FUNC10(&e->lock);          /* avoid race with t4_l2t_free */
		e->state = L2T_STATE_RESOLVING;
		FUNC6(e->addr, addr, addr_len);
		e->ifindex = ifidx;
		e->hash = hash;
		e->lport = lport;
		e->v6 = addr_len == 16;
		FUNC4(&e->refcnt, 1);
		FUNC7(e, neigh);
		e->vlan = vlan;
		e->next = d->l2tab[hash].first;
		d->l2tab[hash].first = e;
		FUNC11(&e->lock);
	}
done:
	FUNC14(&d->lock);
	return e;
}