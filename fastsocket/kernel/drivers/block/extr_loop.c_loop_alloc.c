
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct loop_device {int lo_number; TYPE_1__* lo_queue; int lo_lock; int lo_event; int * lo_thread; int lo_ctl_mutex; struct gendisk* lo_disk; int lo_state; } ;
struct gendisk {int first_minor; int disk_name; TYPE_1__* queue; struct loop_device* private_data; int * fops; int major; } ;
struct TYPE_4__ {struct loop_device* queuedata; } ;


 int GFP_KERNEL ;
 int LOOP_MAJOR ;
 int Lo_unbound ;
 struct gendisk* alloc_disk (int) ;
 TYPE_1__* blk_alloc_queue (int ) ;
 int blk_cleanup_queue (TYPE_1__*) ;
 int blk_queue_make_request (TYPE_1__*,int ) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct loop_device*) ;
 struct loop_device* kzalloc (int,int ) ;
 int lo_fops ;
 int loop_make_request ;
 int mutex_init (int *) ;
 int part_shift ;
 int spin_lock_init (int *) ;
 int sprintf (int ,char*,int) ;

__attribute__((used)) static struct loop_device *loop_alloc(int i)
{
 struct loop_device *lo;
 struct gendisk *disk;

 lo = kzalloc(sizeof(*lo), GFP_KERNEL);
 if (!lo)
  goto out;

 lo->lo_state = Lo_unbound;

 lo->lo_queue = blk_alloc_queue(GFP_KERNEL);
 if (!lo->lo_queue)
  goto out_free_dev;




 blk_queue_make_request(lo->lo_queue, loop_make_request);
 lo->lo_queue->queuedata = lo;

 disk = lo->lo_disk = alloc_disk(1 << part_shift);
 if (!disk)
  goto out_free_queue;

 mutex_init(&lo->lo_ctl_mutex);
 lo->lo_number = i;
 lo->lo_thread = ((void*)0);
 init_waitqueue_head(&lo->lo_event);
 spin_lock_init(&lo->lo_lock);
 disk->major = LOOP_MAJOR;
 disk->first_minor = i << part_shift;
 disk->fops = &lo_fops;
 disk->private_data = lo;
 disk->queue = lo->lo_queue;
 sprintf(disk->disk_name, "loop%d", i);
 return lo;

out_free_queue:
 blk_cleanup_queue(lo->lo_queue);
out_free_dev:
 kfree(lo);
out:
 return ((void*)0);
}
