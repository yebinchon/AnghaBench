
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_context {scalar_t__ cgroup_changed; int * ioc_data; int cic_list; int radix_root; int * aic; scalar_t__ nr_batch_requests; int last_waited; scalar_t__ ioprio; scalar_t__ ioprio_changed; int lock; int nr_tasks; int refcount; } ;
typedef int gfp_t ;


 int GFP_ATOMIC ;
 int INIT_HLIST_HEAD (int *) ;
 int INIT_RADIX_TREE (int *,int) ;
 int __GFP_HIGH ;
 int atomic_long_set (int *,int) ;
 int atomic_set (int *,int) ;
 int iocontext_cachep ;
 int jiffies ;
 struct io_context* kmem_cache_alloc_node (int ,int ,int) ;
 int spin_lock_init (int *) ;

struct io_context *alloc_io_context(gfp_t gfp_flags, int node)
{
 struct io_context *ret;

 ret = kmem_cache_alloc_node(iocontext_cachep, gfp_flags, node);
 if (ret) {
  atomic_long_set(&ret->refcount, 1);
  atomic_set(&ret->nr_tasks, 1);
  spin_lock_init(&ret->lock);
  ret->ioprio_changed = 0;
  ret->ioprio = 0;
  ret->last_waited = jiffies;
  ret->nr_batch_requests = 0;
  ret->aic = ((void*)0);
  INIT_RADIX_TREE(&ret->radix_root, GFP_ATOMIC | __GFP_HIGH);
  INIT_HLIST_HEAD(&ret->cic_list);
  ret->ioc_data = ((void*)0);



 }

 return ret;
}
