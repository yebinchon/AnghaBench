
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct neighbour {TYPE_3__* dev; scalar_t__ primary_key; TYPE_1__* tbl; } ;
struct l2t_entry {int ifindex; scalar_t__ vlan; scalar_t__ lport; int hash; int v6; int lock; struct l2t_entry* next; int refcnt; int addr; int state; } ;
struct l2t_data {int lock; TYPE_2__* l2tab; } ;
struct TYPE_8__ {scalar_t__ tx_chan; scalar_t__ lport; } ;
struct TYPE_7__ {int ifindex; int flags; int priv_flags; } ;
struct TYPE_6__ {struct l2t_entry* first; } ;
struct TYPE_5__ {int key_len; } ;


 int IFF_802_1Q_VLAN ;
 int IFF_LOOPBACK ;
 int L2T_STATE_RESOLVING ;
 scalar_t__ VLAN_NONE ;
 int addr_hash (int *,int,int) ;
 int addreq (struct l2t_entry*,int *) ;
 struct l2t_entry* alloc_l2e (struct l2t_data*) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int l2t_hold (struct l2t_data*,struct l2t_entry*) ;
 int memcpy (int ,int *,int) ;
 int neigh_replace (struct l2t_entry*,struct neighbour*) ;
 TYPE_4__* netdev2pinfo (struct net_device const*) ;
 int reuse_entry (struct l2t_entry*,struct neighbour*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ vlan_dev_vlan_id (TYPE_3__*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

struct l2t_entry *cxgb4_l2t_get(struct l2t_data *d, struct neighbour *neigh,
    const struct net_device *physdev,
    unsigned int priority)
{
 u8 lport;
 u16 vlan;
 struct l2t_entry *e;
 int addr_len = neigh->tbl->key_len;
 u32 *addr = (u32 *)neigh->primary_key;
 int ifidx = neigh->dev->ifindex;
 int hash = addr_hash(addr, addr_len, ifidx);

 if (neigh->dev->flags & IFF_LOOPBACK)
  lport = netdev2pinfo(physdev)->tx_chan + 4;
 else
  lport = netdev2pinfo(physdev)->lport;

 if (neigh->dev->priv_flags & IFF_802_1Q_VLAN)
  vlan = vlan_dev_vlan_id(neigh->dev);
 else
  vlan = VLAN_NONE;

 write_lock_bh(&d->lock);
 for (e = d->l2tab[hash].first; e; e = e->next)
  if (!addreq(e, addr) && e->ifindex == ifidx &&
      e->vlan == vlan && e->lport == lport) {
   l2t_hold(d, e);
   if (atomic_read(&e->refcnt) == 1)
    reuse_entry(e, neigh);
   goto done;
  }


 e = alloc_l2e(d);
 if (e) {
  spin_lock(&e->lock);
  e->state = L2T_STATE_RESOLVING;
  memcpy(e->addr, addr, addr_len);
  e->ifindex = ifidx;
  e->hash = hash;
  e->lport = lport;
  e->v6 = addr_len == 16;
  atomic_set(&e->refcnt, 1);
  neigh_replace(e, neigh);
  e->vlan = vlan;
  e->next = d->l2tab[hash].first;
  d->l2tab[hash].first = e;
  spin_unlock(&e->lock);
 }
done:
 write_unlock_bh(&d->lock);
 return e;
}
