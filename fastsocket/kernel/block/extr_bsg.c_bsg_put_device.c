
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ref; } ;
struct request_queue {TYPE_1__ bsg_dev; } ;
struct bsg_device {int flags; int name; int dev_list; int ref_count; struct request_queue* queue; } ;


 int BSG_F_BLOCK ;
 int atomic_dec_and_test (int *) ;
 int blk_put_queue (struct request_queue*) ;
 int bsg_complete_all_commands (struct bsg_device*) ;
 int bsg_kref_release_function ;
 int bsg_mutex ;
 int dprintk (char*,int ) ;
 int hlist_del (int *) ;
 int kfree (struct bsg_device*) ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int bsg_put_device(struct bsg_device *bd)
{
 int ret = 0, do_free;
 struct request_queue *q = bd->queue;

 mutex_lock(&bsg_mutex);

 do_free = atomic_dec_and_test(&bd->ref_count);
 if (!do_free) {
  mutex_unlock(&bsg_mutex);
  goto out;
 }

 hlist_del(&bd->dev_list);
 mutex_unlock(&bsg_mutex);

 dprintk("%s: tearing down\n", bd->name);




 set_bit(BSG_F_BLOCK, &bd->flags);






 ret = bsg_complete_all_commands(bd);

 kfree(bd);
out:
 kref_put(&q->bsg_dev.ref, bsg_kref_release_function);
 if (do_free)
  blk_put_queue(q);
 return ret;
}
