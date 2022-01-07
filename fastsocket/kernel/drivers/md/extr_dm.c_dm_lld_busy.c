
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {struct mapped_device* queuedata; } ;
struct mapped_device {int flags; } ;
struct dm_table {int dummy; } ;


 int DMF_BLOCK_IO_FOR_SUSPEND ;
 struct dm_table* dm_get_live_table (struct mapped_device*) ;
 int dm_table_any_busy_target (struct dm_table*) ;
 int dm_table_put (struct dm_table*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int dm_lld_busy(struct request_queue *q)
{
 int r;
 struct mapped_device *md = q->queuedata;
 struct dm_table *map = dm_get_live_table(md);

 if (!map || test_bit(DMF_BLOCK_IO_FOR_SUSPEND, &md->flags))
  r = 1;
 else
  r = dm_table_any_busy_target(map);

 dm_table_put(map);

 return r;
}
