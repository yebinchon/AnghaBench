
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int suspend_lock; int flags; int queue; int io_lock; int wq; } ;
struct dm_table {int dummy; } ;


 int DMF_BLOCK_IO_FOR_SUSPEND ;
 int DMF_NOFLUSH_SUSPENDING ;
 int DMF_SUSPENDED ;
 unsigned int DM_SUSPEND_LOCKFS_FLAG ;
 unsigned int DM_SUSPEND_NOFLUSH_FLAG ;
 int EINVAL ;
 int TASK_INTERRUPTIBLE ;
 int clear_bit (int ,int *) ;
 struct dm_table* dm_get_live_table (struct mapped_device*) ;
 int dm_queue_flush (struct mapped_device*) ;
 scalar_t__ dm_request_based (struct mapped_device*) ;
 scalar_t__ dm_suspended_md (struct mapped_device*) ;
 int dm_table_postsuspend_targets (struct dm_table*) ;
 int dm_table_presuspend_targets (struct dm_table*) ;
 int dm_table_put (struct dm_table*) ;
 int dm_wait_for_completion (struct mapped_device*,int ) ;
 int down_write (int *) ;
 int flush_workqueue (int ) ;
 int lock_fs (struct mapped_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;
 int start_queue (int ) ;
 int stop_queue (int ) ;
 int unlock_fs (struct mapped_device*) ;
 int up_write (int *) ;

int dm_suspend(struct mapped_device *md, unsigned suspend_flags)
{
 struct dm_table *map = ((void*)0);
 int r = 0;
 int do_lockfs = suspend_flags & DM_SUSPEND_LOCKFS_FLAG ? 1 : 0;
 int noflush = suspend_flags & DM_SUSPEND_NOFLUSH_FLAG ? 1 : 0;

 mutex_lock(&md->suspend_lock);

 if (dm_suspended_md(md)) {
  r = -EINVAL;
  goto out_unlock;
 }

 map = dm_get_live_table(md);





 if (noflush)
  set_bit(DMF_NOFLUSH_SUSPENDING, &md->flags);


 dm_table_presuspend_targets(map);







 if (!noflush && do_lockfs) {
  r = lock_fs(md);
  if (r)
   goto out;
 }
 down_write(&md->io_lock);
 set_bit(DMF_BLOCK_IO_FOR_SUSPEND, &md->flags);
 up_write(&md->io_lock);





 if (dm_request_based(md))
  stop_queue(md->queue);

 flush_workqueue(md->wq);






 r = dm_wait_for_completion(md, TASK_INTERRUPTIBLE);

 down_write(&md->io_lock);
 if (noflush)
  clear_bit(DMF_NOFLUSH_SUSPENDING, &md->flags);
 up_write(&md->io_lock);


 if (r < 0) {
  dm_queue_flush(md);

  if (dm_request_based(md))
   start_queue(md->queue);

  unlock_fs(md);
  goto out;
 }







 set_bit(DMF_SUSPENDED, &md->flags);

 dm_table_postsuspend_targets(map);

out:
 dm_table_put(map);

out_unlock:
 mutex_unlock(&md->suspend_lock);
 return r;
}
