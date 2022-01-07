
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int map_lock; struct dm_table* map; } ;
struct dm_table {int dummy; } ;


 int dm_table_event_callback (struct dm_table*,int *,int *) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct dm_table *__unbind(struct mapped_device *md)
{
 struct dm_table *map = md->map;
 unsigned long flags;

 if (!map)
  return ((void*)0);

 dm_table_event_callback(map, ((void*)0), ((void*)0));
 write_lock_irqsave(&md->map_lock, flags);
 md->map = ((void*)0);
 write_unlock_irqrestore(&md->map_lock, flags);

 return map;
}
