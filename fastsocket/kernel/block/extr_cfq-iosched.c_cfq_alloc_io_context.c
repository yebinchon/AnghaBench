
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfq_io_context {int exit; int dtor; int cic_list; int queue_list; int last_end_request; } ;
struct cfq_data {TYPE_1__* queue; } ;
typedef int gfp_t ;
struct TYPE_2__ {int node; } ;


 int INIT_HLIST_NODE (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int __GFP_ZERO ;
 int cfq_exit_io_context ;
 int cfq_free_io_context ;
 int cfq_ioc_count ;
 int cfq_ioc_pool ;
 int elv_ioc_count_inc (int ) ;
 int jiffies ;
 struct cfq_io_context* kmem_cache_alloc_node (int ,int,int ) ;

__attribute__((used)) static struct cfq_io_context *
cfq_alloc_io_context(struct cfq_data *cfqd, gfp_t gfp_mask)
{
 struct cfq_io_context *cic;

 cic = kmem_cache_alloc_node(cfq_ioc_pool, gfp_mask | __GFP_ZERO,
       cfqd->queue->node);
 if (cic) {
  cic->last_end_request = jiffies;
  INIT_LIST_HEAD(&cic->queue_list);
  INIT_HLIST_NODE(&cic->cic_list);
  cic->dtor = cfq_free_io_context;
  cic->exit = cfq_exit_io_context;
  elv_ioc_count_inc(cfq_ioc_count);
 }

 return cic;
}
