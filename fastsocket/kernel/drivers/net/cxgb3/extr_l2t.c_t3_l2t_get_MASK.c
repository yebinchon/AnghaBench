#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct t3cdev {int dummy; } ;
struct port_info {int port_id; } ;
struct net_device {int ifindex; int priv_flags; } ;
struct neighbour {struct net_device* dev; scalar_t__ primary_key; } ;
struct l2t_entry {scalar_t__ addr; int ifindex; int smt_idx; int /*<<< orphan*/  lock; int /*<<< orphan*/  vlan; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  state; struct l2t_entry* next; } ;
struct l2t_data {int /*<<< orphan*/  lock; TYPE_1__* l2tab; } ;
struct dst_entry {struct neighbour* neighbour; } ;
struct TYPE_2__ {struct l2t_entry* first; } ;

/* Variables and functions */
 int IFF_802_1Q_VLAN ; 
 struct l2t_data* FUNC0 (struct t3cdev*) ; 
 int /*<<< orphan*/  L2T_STATE_RESOLVING ; 
 int /*<<< orphan*/  VLAN_NONE ; 
 struct l2t_entry* FUNC1 (struct l2t_data*) ; 
 int FUNC2 (scalar_t__,int,struct l2t_data*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct l2t_data*,struct l2t_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct l2t_entry*,struct neighbour*) ; 
 struct port_info* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct l2t_entry*,struct neighbour*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

struct l2t_entry *FUNC16(struct t3cdev *cdev, struct dst_entry *dst,
			     struct net_device *dev)
{
	struct l2t_entry *e = NULL;
	struct neighbour *neigh;
	struct port_info *p;
	struct l2t_data *d;
	int hash;
	u32 addr;
	int ifidx;
	int smt_idx;

	FUNC8();
	neigh = dst->neighbour;
	if (!neigh)
		goto done_rcu;

	addr = *(u32 *) neigh->primary_key;
	ifidx = neigh->dev->ifindex;

	if (!dev)
		dev = neigh->dev;
	p = FUNC7(dev);
	smt_idx = p->port_id;

	d = FUNC0(cdev);
	if (!d)
		goto done_rcu;

	hash = FUNC2(addr, ifidx, d);

	FUNC14(&d->lock);
	for (e = d->l2tab[hash].first; e; e = e->next)
		if (e->addr == addr && e->ifindex == ifidx &&
		    e->smt_idx == smt_idx) {
			FUNC5(d, e);
			if (FUNC3(&e->refcnt) == 1)
				FUNC10(e, neigh);
			goto done_unlock;
		}

	/* Need to allocate a new entry */
	e = FUNC1(d);
	if (e) {
		FUNC11(&e->lock);	/* avoid race with t3_l2t_free */
		e->next = d->l2tab[hash].first;
		d->l2tab[hash].first = e;
		e->state = L2T_STATE_RESOLVING;
		e->addr = addr;
		e->ifindex = ifidx;
		e->smt_idx = smt_idx;
		FUNC4(&e->refcnt, 1);
		FUNC6(e, neigh);
		if (neigh->dev->priv_flags & IFF_802_1Q_VLAN)
			e->vlan = FUNC13(neigh->dev);
		else
			e->vlan = VLAN_NONE;
		FUNC12(&e->lock);
	}
done_unlock:
	FUNC15(&d->lock);
done_rcu:
	FUNC9();
	return e;
}