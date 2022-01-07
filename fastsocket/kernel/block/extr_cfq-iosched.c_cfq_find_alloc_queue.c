
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct io_context {int dummy; } ;
struct cfq_queue {int dummy; } ;
struct cfq_io_context {int dummy; } ;
struct cfq_group {int dummy; } ;
struct cfq_data {struct cfq_queue oom_cfqq; TYPE_1__* queue; } ;
typedef int gfp_t ;
struct TYPE_4__ {int pid; } ;
struct TYPE_3__ {int node; int queue_lock; } ;


 int __GFP_WAIT ;
 int __GFP_ZERO ;
 struct cfq_io_context* cfq_cic_lookup (struct cfq_data*,struct io_context*) ;
 struct cfq_group* cfq_get_cfqg (struct cfq_data*) ;
 int cfq_init_cfqq (struct cfq_data*,struct cfq_queue*,int ,int) ;
 int cfq_init_prio_data (struct cfq_queue*,struct io_context*) ;
 int cfq_link_cfqq_cfqg (struct cfq_queue*,struct cfq_group*) ;
 int cfq_log_cfqq (struct cfq_data*,struct cfq_queue*,char*) ;
 int cfq_pool ;
 struct cfq_queue* cic_to_cfqq (struct cfq_io_context*,int) ;
 TYPE_2__* current ;
 struct cfq_queue* kmem_cache_alloc_node (int ,int,int ) ;
 int kmem_cache_free (int ,struct cfq_queue*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static struct cfq_queue *
cfq_find_alloc_queue(struct cfq_data *cfqd, bool is_sync,
       struct io_context *ioc, gfp_t gfp_mask)
{
 struct cfq_queue *cfqq, *new_cfqq = ((void*)0);
 struct cfq_io_context *cic;
 struct cfq_group *cfqg;

retry:
 cfqg = cfq_get_cfqg(cfqd);
 cic = cfq_cic_lookup(cfqd, ioc);

 cfqq = cic_to_cfqq(cic, is_sync);





 if (!cfqq || cfqq == &cfqd->oom_cfqq) {
  cfqq = ((void*)0);
  if (new_cfqq) {
   cfqq = new_cfqq;
   new_cfqq = ((void*)0);
  } else if (gfp_mask & __GFP_WAIT) {
   spin_unlock_irq(cfqd->queue->queue_lock);
   new_cfqq = kmem_cache_alloc_node(cfq_pool,
     gfp_mask | __GFP_ZERO,
     cfqd->queue->node);
   spin_lock_irq(cfqd->queue->queue_lock);
   if (new_cfqq)
    goto retry;
  } else {
   cfqq = kmem_cache_alloc_node(cfq_pool,
     gfp_mask | __GFP_ZERO,
     cfqd->queue->node);
  }

  if (cfqq) {
   cfq_init_cfqq(cfqd, cfqq, current->pid, is_sync);
   cfq_init_prio_data(cfqq, ioc);
   cfq_link_cfqq_cfqg(cfqq, cfqg);
   cfq_log_cfqq(cfqd, cfqq, "alloced");
  } else
   cfqq = &cfqd->oom_cfqq;
 }

 if (new_cfqq)
  kmem_cache_free(cfq_pool, new_cfqq);

 return cfqq;
}
