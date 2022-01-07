
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int dummy; } ;
struct dm_table {int dummy; } ;
struct dm_ioctl {int dummy; } ;


 int ENXIO ;
 int __dev_status (struct mapped_device*,struct dm_ioctl*) ;
 struct dm_table* dm_get_live_or_inactive_table (struct mapped_device*,struct dm_ioctl*) ;
 int dm_put (struct mapped_device*) ;
 int dm_table_put (struct dm_table*) ;
 struct mapped_device* find_device (struct dm_ioctl*) ;
 int retrieve_deps (struct dm_table*,struct dm_ioctl*,size_t) ;

__attribute__((used)) static int table_deps(struct dm_ioctl *param, size_t param_size)
{
 struct mapped_device *md;
 struct dm_table *table;

 md = find_device(param);
 if (!md)
  return -ENXIO;

 __dev_status(md, param);

 table = dm_get_live_or_inactive_table(md, param);
 if (table) {
  retrieve_deps(table, param, param_size);
  dm_table_put(table);
 }

 dm_put(md);

 return 0;
}
