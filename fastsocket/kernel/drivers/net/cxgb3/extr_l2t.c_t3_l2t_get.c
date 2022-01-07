
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct t3cdev {int dummy; } ;
struct port_info {int port_id; } ;
struct net_device {int ifindex; int priv_flags; } ;
struct neighbour {struct net_device* dev; scalar_t__ primary_key; } ;
struct l2t_entry {scalar_t__ addr; int ifindex; int smt_idx; int lock; int vlan; int refcnt; int state; struct l2t_entry* next; } ;
struct l2t_data {int lock; TYPE_1__* l2tab; } ;
struct dst_entry {struct neighbour* neighbour; } ;
struct TYPE_2__ {struct l2t_entry* first; } ;


 int IFF_802_1Q_VLAN ;
 struct l2t_data* L2DATA (struct t3cdev*) ;
 int L2T_STATE_RESOLVING ;
 int VLAN_NONE ;
 struct l2t_entry* alloc_l2e (struct l2t_data*) ;
 int arp_hash (scalar_t__,int,struct l2t_data*) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int l2t_hold (struct l2t_data*,struct l2t_entry*) ;
 int neigh_replace (struct l2t_entry*,struct neighbour*) ;
 struct port_info* netdev_priv (struct net_device*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int reuse_entry (struct l2t_entry*,struct neighbour*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vlan_dev_vlan_id (struct net_device*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

struct l2t_entry *t3_l2t_get(struct t3cdev *cdev, struct dst_entry *dst,
        struct net_device *dev)
{
 struct l2t_entry *e = ((void*)0);
 struct neighbour *neigh;
 struct port_info *p;
 struct l2t_data *d;
 int hash;
 u32 addr;
 int ifidx;
 int smt_idx;

 rcu_read_lock();
 neigh = dst->neighbour;
 if (!neigh)
  goto done_rcu;

 addr = *(u32 *) neigh->primary_key;
 ifidx = neigh->dev->ifindex;

 if (!dev)
  dev = neigh->dev;
 p = netdev_priv(dev);
 smt_idx = p->port_id;

 d = L2DATA(cdev);
 if (!d)
  goto done_rcu;

 hash = arp_hash(addr, ifidx, d);

 write_lock_bh(&d->lock);
 for (e = d->l2tab[hash].first; e; e = e->next)
  if (e->addr == addr && e->ifindex == ifidx &&
      e->smt_idx == smt_idx) {
   l2t_hold(d, e);
   if (atomic_read(&e->refcnt) == 1)
    reuse_entry(e, neigh);
   goto done_unlock;
  }


 e = alloc_l2e(d);
 if (e) {
  spin_lock(&e->lock);
  e->next = d->l2tab[hash].first;
  d->l2tab[hash].first = e;
  e->state = L2T_STATE_RESOLVING;
  e->addr = addr;
  e->ifindex = ifidx;
  e->smt_idx = smt_idx;
  atomic_set(&e->refcnt, 1);
  neigh_replace(e, neigh);
  if (neigh->dev->priv_flags & IFF_802_1Q_VLAN)
   e->vlan = vlan_dev_vlan_id(neigh->dev);
  else
   e->vlan = VLAN_NONE;
  spin_unlock(&e->lock);
 }
done_unlock:
 write_unlock_bh(&d->lock);
done_rcu:
 rcu_read_unlock();
 return e;
}
