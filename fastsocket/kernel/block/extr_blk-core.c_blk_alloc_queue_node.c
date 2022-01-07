
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ra_pages; char* name; int capabilities; scalar_t__ state; struct request_queue* unplug_io_data; int unplug_io_fn; } ;
struct request_queue {int __queue_lock; int * queue_lock; int * orig_bar_rq; scalar_t__ ordcolor; scalar_t__ orderr; scalar_t__ ordseq; scalar_t__ next_ordered; scalar_t__ ordered; int sysfs_lock; int kobj; int delay_work; int unplug_work; int flush_data_in_flight; int * flush_queue; int timeout_list; int timeout; int unplug_timer; TYPE_1__ backing_dev_info; } ;
typedef int gfp_t ;


 int BDI_CAP_MAP_COPY ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int PAGE_CACHE_SIZE ;
 int VM_MAX_READAHEAD ;
 int __GFP_ZERO ;
 int bdi_init (TYPE_1__*) ;
 int blk_backing_dev_unplug ;
 int blk_delay_work ;
 int blk_queue_ktype ;
 int blk_requestq_cachep ;
 int blk_rq_timed_out_timer ;
 scalar_t__ blk_throtl_init (struct request_queue*) ;
 int blk_unplug_work ;
 int init_timer (int *) ;
 struct request_queue* kmem_cache_alloc_node (int ,int,int) ;
 int kmem_cache_free (int ,struct request_queue*) ;
 int kobject_init (int *,int *) ;
 int mutex_init (int *) ;
 int setup_timer (int *,int ,unsigned long) ;
 int spin_lock_init (int *) ;

struct request_queue *blk_alloc_queue_node(gfp_t gfp_mask, int node_id)
{
 struct request_queue *q;
 int err;

 q = kmem_cache_alloc_node(blk_requestq_cachep,
    gfp_mask | __GFP_ZERO, node_id);
 if (!q)
  return ((void*)0);

 q->backing_dev_info.unplug_io_fn = blk_backing_dev_unplug;
 q->backing_dev_info.unplug_io_data = q;
 q->backing_dev_info.ra_pages =
   (VM_MAX_READAHEAD * 1024) / PAGE_CACHE_SIZE;
 q->backing_dev_info.state = 0;
 q->backing_dev_info.capabilities = BDI_CAP_MAP_COPY;
 q->backing_dev_info.name = "block";

 err = bdi_init(&q->backing_dev_info);
 if (err) {
  kmem_cache_free(blk_requestq_cachep, q);
  return ((void*)0);
 }

 if (blk_throtl_init(q)) {
  kmem_cache_free(blk_requestq_cachep, q);
  return ((void*)0);
 }

 init_timer(&q->unplug_timer);
 setup_timer(&q->timeout, blk_rq_timed_out_timer, (unsigned long) q);
 INIT_LIST_HEAD(&q->timeout_list);
 INIT_LIST_HEAD(&q->flush_queue[0]);
 INIT_LIST_HEAD(&q->flush_queue[1]);
 INIT_LIST_HEAD(&q->flush_data_in_flight);
 INIT_WORK(&q->unplug_work, blk_unplug_work);
 INIT_DELAYED_WORK(&q->delay_work, blk_delay_work);

 kobject_init(&q->kobj, &blk_queue_ktype);

 mutex_init(&q->sysfs_lock);
 spin_lock_init(&q->__queue_lock);


 q->ordered = q->next_ordered = q->ordseq = 0;
 q->orderr = q->ordcolor = 0;
 q->orig_bar_rq = ((void*)0);





 q->queue_lock = &q->__queue_lock;

 return q;
}
