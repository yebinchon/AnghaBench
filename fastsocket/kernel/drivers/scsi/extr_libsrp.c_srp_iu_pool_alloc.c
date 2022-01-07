
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_queue {struct iu_entry* pool; struct iu_entry* items; int queue; int lock; } ;
struct srp_buf {int dummy; } ;
struct iu_entry {struct srp_buf* sbuf; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int __kfifo_put (int ,void*,int) ;
 void* kcalloc (size_t,int,int ) ;
 int kfifo_init (void*,size_t,int ,int *) ;
 int kfree (struct iu_entry*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int srp_iu_pool_alloc(struct srp_queue *q, size_t max,
        struct srp_buf **ring)
{
 int i;
 struct iu_entry *iue;

 q->pool = kcalloc(max, sizeof(struct iu_entry *), GFP_KERNEL);
 if (!q->pool)
  return -ENOMEM;
 q->items = kcalloc(max, sizeof(struct iu_entry), GFP_KERNEL);
 if (!q->items)
  goto free_pool;

 spin_lock_init(&q->lock);
 q->queue = kfifo_init((void *) q->pool, max * sizeof(void *),
         GFP_KERNEL, &q->lock);
 if (IS_ERR(q->queue))
  goto free_item;

 for (i = 0, iue = q->items; i < max; i++) {
  __kfifo_put(q->queue, (void *) &iue, sizeof(void *));
  iue->sbuf = ring[i];
  iue++;
 }
 return 0;

free_item:
 kfree(q->items);
free_pool:
 kfree(q->pool);
 return -ENOMEM;
}
