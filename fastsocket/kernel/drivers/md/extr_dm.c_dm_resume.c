
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int suspend_lock; int flags; int queue; } ;
struct dm_table {int dummy; } ;


 int DMF_SUSPENDED ;
 int EINVAL ;
 int clear_bit (int ,int *) ;
 struct dm_table* dm_get_live_table (struct mapped_device*) ;
 int dm_queue_flush (struct mapped_device*) ;
 scalar_t__ dm_request_based (struct mapped_device*) ;
 int dm_suspended_md (struct mapped_device*) ;
 int dm_table_get_size (struct dm_table*) ;
 int dm_table_put (struct dm_table*) ;
 int dm_table_resume_targets (struct dm_table*) ;
 int dm_table_unplug_all (struct dm_table*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int start_queue (int ) ;
 int unlock_fs (struct mapped_device*) ;

int dm_resume(struct mapped_device *md)
{
 int r = -EINVAL;
 struct dm_table *map = ((void*)0);

 mutex_lock(&md->suspend_lock);
 if (!dm_suspended_md(md))
  goto out;

 map = dm_get_live_table(md);
 if (!map || !dm_table_get_size(map))
  goto out;

 r = dm_table_resume_targets(map);
 if (r)
  goto out;

 dm_queue_flush(md);






 if (dm_request_based(md))
  start_queue(md->queue);

 unlock_fs(md);

 clear_bit(DMF_SUSPENDED, &md->flags);

 dm_table_unplug_all(map);
 r = 0;
out:
 dm_table_put(map);
 mutex_unlock(&md->suspend_lock);

 return r;
}
