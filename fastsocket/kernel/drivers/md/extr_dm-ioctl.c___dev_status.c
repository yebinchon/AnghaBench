
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int dummy; } ;
struct gendisk {int dummy; } ;
struct dm_table {int dummy; } ;
struct dm_ioctl {int flags; void* target_count; int event_nr; int open_count; int dev; } ;


 int DM_ACTIVE_PRESENT_FLAG ;
 int DM_QUERY_INACTIVE_TABLE_FLAG ;
 int DM_READONLY_FLAG ;
 int DM_SUSPEND_FLAG ;
 int FMODE_WRITE ;
 int disk_devt (struct gendisk*) ;
 struct gendisk* dm_disk (struct mapped_device*) ;
 int dm_get_event_nr (struct mapped_device*) ;
 struct dm_table* dm_get_inactive_table (struct mapped_device*) ;
 struct dm_table* dm_get_live_table (struct mapped_device*) ;
 int dm_open_count (struct mapped_device*) ;
 scalar_t__ dm_suspended_md (struct mapped_device*) ;
 int dm_table_get_mode (struct dm_table*) ;
 void* dm_table_get_num_targets (struct dm_table*) ;
 int dm_table_put (struct dm_table*) ;
 scalar_t__ get_disk_ro (struct gendisk*) ;
 int huge_encode_dev (int ) ;

__attribute__((used)) static void __dev_status(struct mapped_device *md, struct dm_ioctl *param)
{
 struct gendisk *disk = dm_disk(md);
 struct dm_table *table;

 param->flags &= ~(DM_SUSPEND_FLAG | DM_READONLY_FLAG |
     DM_ACTIVE_PRESENT_FLAG);

 if (dm_suspended_md(md))
  param->flags |= DM_SUSPEND_FLAG;

 param->dev = huge_encode_dev(disk_devt(disk));






 param->open_count = dm_open_count(md);

 param->event_nr = dm_get_event_nr(md);
 param->target_count = 0;

 table = dm_get_live_table(md);
 if (table) {
  if (!(param->flags & DM_QUERY_INACTIVE_TABLE_FLAG)) {
   if (get_disk_ro(disk))
    param->flags |= DM_READONLY_FLAG;
   param->target_count = dm_table_get_num_targets(table);
  }
  dm_table_put(table);

  param->flags |= DM_ACTIVE_PRESENT_FLAG;
 }

 if (param->flags & DM_QUERY_INACTIVE_TABLE_FLAG) {
  table = dm_get_inactive_table(md);
  if (table) {
   if (!(dm_table_get_mode(table) & FMODE_WRITE))
    param->flags |= DM_READONLY_FLAG;
   param->target_count = dm_table_get_num_targets(table);
   dm_table_put(table);
  }
 }
}
