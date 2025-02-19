
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ipoib_neigh_table {int entries; struct ipoib_neigh_hash* htbl; } ;
struct ipoib_neigh_hash {int size; int mask; struct ipoib_neigh_table* ntbl; struct ipoib_neigh** buckets; } ;
struct ipoib_neigh {int dummy; } ;
struct ipoib_dev_priv {int neigh_reap_task; int flags; struct ipoib_neigh_table ntbl; } ;
struct TYPE_2__ {int gc_interval; int gc_thresh3; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IPOIB_NEIGH_TBL_FLUSH ;
 int IPOIB_STOP_NEIGH_GC ;
 TYPE_1__ arp_tbl ;
 int atomic_set (int *,int ) ;
 int clear_bit (int ,int *) ;
 int ipoib_workqueue ;
 int kfree (struct ipoib_neigh_hash*) ;
 void* kzalloc (int,int ) ;
 int queue_delayed_work (int ,int *,int ) ;
 int roundup_pow_of_two (int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int ipoib_neigh_hash_init(struct ipoib_dev_priv *priv)
{
 struct ipoib_neigh_table *ntbl = &priv->ntbl;
 struct ipoib_neigh_hash *htbl;
 struct ipoib_neigh **buckets;
 u32 size;

 clear_bit(IPOIB_NEIGH_TBL_FLUSH, &priv->flags);
 ntbl->htbl = ((void*)0);
 htbl = kzalloc(sizeof(*htbl), GFP_KERNEL);
 if (!htbl)
  return -ENOMEM;
 set_bit(IPOIB_STOP_NEIGH_GC, &priv->flags);
 size = roundup_pow_of_two(arp_tbl.gc_thresh3);
 buckets = kzalloc(size * sizeof(*buckets), GFP_KERNEL);
 if (!buckets) {
  kfree(htbl);
  return -ENOMEM;
 }
 htbl->size = size;
 htbl->mask = (size - 1);
 htbl->buckets = buckets;
 ntbl->htbl = htbl;
 htbl->ntbl = ntbl;
 atomic_set(&ntbl->entries, 0);


 clear_bit(IPOIB_STOP_NEIGH_GC, &priv->flags);
 queue_delayed_work(ipoib_workqueue, &priv->neigh_reap_task,
      arp_tbl.gc_interval);

 return 0;
}
