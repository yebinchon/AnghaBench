
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int dummy; } ;
struct dm_table {int dummy; } ;
struct dm_ioctl {int event_nr; } ;


 int ENXIO ;
 int ERESTARTSYS ;
 int __dev_status (struct mapped_device*,struct dm_ioctl*) ;
 struct dm_table* dm_get_live_or_inactive_table (struct mapped_device*,struct dm_ioctl*) ;
 int dm_put (struct mapped_device*) ;
 int dm_table_put (struct dm_table*) ;
 scalar_t__ dm_wait_event (struct mapped_device*,int ) ;
 struct mapped_device* find_device (struct dm_ioctl*) ;
 int retrieve_status (struct dm_table*,struct dm_ioctl*,size_t) ;

__attribute__((used)) static int dev_wait(struct dm_ioctl *param, size_t param_size)
{
 int r = 0;
 struct mapped_device *md;
 struct dm_table *table;

 md = find_device(param);
 if (!md)
  return -ENXIO;




 if (dm_wait_event(md, param->event_nr)) {
  r = -ERESTARTSYS;
  goto out;
 }






 __dev_status(md, param);

 table = dm_get_live_or_inactive_table(md, param);
 if (table) {
  retrieve_status(table, param, param_size);
  dm_table_put(table);
 }

out:
 dm_put(md);

 return r;
}
