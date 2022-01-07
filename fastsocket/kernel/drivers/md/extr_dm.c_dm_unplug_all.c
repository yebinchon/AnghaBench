
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {struct mapped_device* queuedata; } ;
struct mapped_device {int dummy; } ;
struct dm_table {int dummy; } ;


 struct dm_table* dm_get_live_table (struct mapped_device*) ;
 scalar_t__ dm_request_based (struct mapped_device*) ;
 int dm_table_put (struct dm_table*) ;
 int dm_table_unplug_all (struct dm_table*) ;
 int generic_unplug_device (struct request_queue*) ;

__attribute__((used)) static void dm_unplug_all(struct request_queue *q)
{
 struct mapped_device *md = q->queuedata;
 struct dm_table *map = dm_get_live_table(md);

 if (map) {
  if (dm_request_based(md))
   generic_unplug_device(q);

  dm_table_unplug_all(map);
  dm_table_put(map);
 }
}
