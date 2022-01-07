
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int holders; int flags; } ;
struct dm_table {int dummy; } ;


 int DMF_FREEING ;
 int DMWARN (char*,int ,scalar_t__) ;
 int MINOR (int ) ;
 int MINOR_ALLOCED ;
 int __unbind (struct mapped_device*) ;
 int _minor_idr ;
 int _minor_lock ;
 scalar_t__ atomic_read (int *) ;
 int disk_devt (int ) ;
 int dm_device_name (struct mapped_device*) ;
 int dm_disk (struct mapped_device*) ;
 struct dm_table* dm_get_live_table (struct mapped_device*) ;
 int dm_suspended_md (struct mapped_device*) ;
 int dm_sysfs_exit (struct mapped_device*) ;
 int dm_table_destroy (int ) ;
 int dm_table_postsuspend_targets (struct dm_table*) ;
 int dm_table_presuspend_targets (struct dm_table*) ;
 int dm_table_put (struct dm_table*) ;
 int free_dev (struct mapped_device*) ;
 int idr_replace (int *,int ,int ) ;
 int might_sleep () ;
 int msleep (int) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void __dm_destroy(struct mapped_device *md, bool wait)
{
 struct dm_table *map;

 might_sleep();

 spin_lock(&_minor_lock);
 map = dm_get_live_table(md);
 idr_replace(&_minor_idr, MINOR_ALLOCED, MINOR(disk_devt(dm_disk(md))));
 set_bit(DMF_FREEING, &md->flags);
 spin_unlock(&_minor_lock);

 if (!dm_suspended_md(md)) {
  dm_table_presuspend_targets(map);
  dm_table_postsuspend_targets(map);
 }







 if (wait)
  while (atomic_read(&md->holders))
   msleep(1);
 else if (atomic_read(&md->holders))
  DMWARN("%s: Forcibly removing mapped_device still in use! (%d users)",
         dm_device_name(md), atomic_read(&md->holders));

 dm_sysfs_exit(md);
 dm_table_put(map);
 dm_table_destroy(__unbind(md));
 free_dev(md);
}
