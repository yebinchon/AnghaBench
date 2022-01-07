
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct fc_exch_pool {int lock; } ;
struct fc_exch_mgr {scalar_t__ min_xid; scalar_t__ max_xid; int pool; } ;
struct fc_exch {scalar_t__ xid; } ;


 scalar_t__ fc_cpu_mask ;
 scalar_t__ fc_cpu_order ;
 int fc_exch_hold (struct fc_exch*) ;
 struct fc_exch* fc_exch_ptr_get (struct fc_exch_pool*,scalar_t__) ;
 struct fc_exch_pool* per_cpu_ptr (int ,scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static struct fc_exch *fc_exch_find(struct fc_exch_mgr *mp, u16 xid)
{
 struct fc_exch_pool *pool;
 struct fc_exch *ep = ((void*)0);

 if ((xid >= mp->min_xid) && (xid <= mp->max_xid)) {
  pool = per_cpu_ptr(mp->pool, xid & fc_cpu_mask);
  spin_lock_bh(&pool->lock);
  ep = fc_exch_ptr_get(pool, (xid - mp->min_xid) >> fc_cpu_order);
  if (ep && ep->xid == xid)
   fc_exch_hold(ep);
  spin_unlock_bh(&pool->lock);
 }
 return ep;
}
