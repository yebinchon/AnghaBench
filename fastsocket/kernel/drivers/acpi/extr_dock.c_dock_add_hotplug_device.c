
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dock_station {int hp_lock; int hotplug_devices; } ;
struct dock_dependent_device {int hotplug_list; } ;


 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void
dock_add_hotplug_device(struct dock_station *ds,
   struct dock_dependent_device *dd)
{
 mutex_lock(&ds->hp_lock);
 list_add_tail(&dd->hotplug_list, &ds->hotplug_devices);
 mutex_unlock(&ds->hp_lock);
}
