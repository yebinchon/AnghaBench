
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dock_station {int hp_lock; } ;
struct dock_dependent_device {int hotplug_list; } ;


 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void
dock_del_hotplug_device(struct dock_station *ds,
   struct dock_dependent_device *dd)
{
 mutex_lock(&ds->hp_lock);
 list_del(&dd->hotplug_list);
 mutex_unlock(&ds->hp_lock);
}
