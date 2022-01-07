
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dock_station {int dd_lock; int dependent_devices; } ;
struct dock_dependent_device {int list; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
add_dock_dependent_device(struct dock_station *ds,
     struct dock_dependent_device *dd)
{
 spin_lock(&ds->dd_lock);
 list_add_tail(&dd->list, &ds->dependent_devices);
 spin_unlock(&ds->dd_lock);
}
