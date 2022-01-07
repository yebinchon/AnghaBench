
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
struct net_device {int dummy; } ;
struct ipoib_neigh_table {int entries; int htbl; } ;
struct ipoib_neigh_hash {int * buckets; int hnext; void* alive; int refcnt; int daddr; } ;
struct ipoib_neigh {int * buckets; int hnext; void* alive; int refcnt; int daddr; } ;
struct ipoib_dev_priv {int lock; struct ipoib_neigh_table ntbl; } ;


 int INFINIBAND_ALEN ;
 int atomic_inc (int *) ;
 int atomic_inc_not_zero (int *) ;
 size_t ipoib_addr_hash (struct ipoib_neigh_hash*,int *) ;
 struct ipoib_neigh_hash* ipoib_neigh_ctor (int *,struct net_device*) ;
 void* jiffies ;
 int lockdep_is_held (int *) ;
 scalar_t__ memcmp (int *,int ,int ) ;
 struct ipoib_dev_priv* netdev_priv (struct net_device*) ;
 int rcu_assign_pointer (int ,struct ipoib_neigh_hash*) ;
 struct ipoib_neigh_hash* rcu_dereference_protected (int ,int ) ;

struct ipoib_neigh *ipoib_neigh_alloc(u8 *daddr,
          struct net_device *dev)
{
 struct ipoib_dev_priv *priv = netdev_priv(dev);
 struct ipoib_neigh_table *ntbl = &priv->ntbl;
 struct ipoib_neigh_hash *htbl;
 struct ipoib_neigh *neigh;
 u32 hash_val;

 htbl = rcu_dereference_protected(ntbl->htbl,
      lockdep_is_held(&priv->lock));
 if (!htbl) {
  neigh = ((void*)0);
  goto out_unlock;
 }




 hash_val = ipoib_addr_hash(htbl, daddr);
 for (neigh = rcu_dereference_protected(htbl->buckets[hash_val],
            lockdep_is_held(&priv->lock));
      neigh != ((void*)0);
      neigh = rcu_dereference_protected(neigh->hnext,
            lockdep_is_held(&priv->lock))) {
  if (memcmp(daddr, neigh->daddr, INFINIBAND_ALEN) == 0) {

   if (!atomic_inc_not_zero(&neigh->refcnt)) {

    neigh = ((void*)0);
    break;
   }
   neigh->alive = jiffies;
   goto out_unlock;
  }
 }

 neigh = ipoib_neigh_ctor(daddr, dev);
 if (!neigh)
  goto out_unlock;


 atomic_inc(&neigh->refcnt);
 neigh->alive = jiffies;

 rcu_assign_pointer(neigh->hnext,
      rcu_dereference_protected(htbl->buckets[hash_val],
           lockdep_is_held(&priv->lock)));
 rcu_assign_pointer(htbl->buckets[hash_val], neigh);
 atomic_inc(&ntbl->entries);

out_unlock:

 return neigh;
}
