
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ sd; } ;
struct mddev {int sysfs_active; int thread; int reconfig_mutex; int * sysfs_action; TYPE_2__ kobj; TYPE_1__* pers; struct attribute_group* to_remove; } ;
struct attribute_group {int dummy; } ;
struct TYPE_3__ {int * sync_request; } ;


 struct attribute_group md_redundancy_group ;
 int md_wakeup_thread (int ) ;
 int mutex_unlock (int *) ;
 int pers_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sysfs_put (int *) ;
 int sysfs_remove_group (TYPE_2__*,struct attribute_group*) ;

__attribute__((used)) static void mddev_unlock(struct mddev * mddev)
{
 if (mddev->to_remove) {
  struct attribute_group *to_remove = mddev->to_remove;
  mddev->to_remove = ((void*)0);
  mddev->sysfs_active = 1;
  mutex_unlock(&mddev->reconfig_mutex);

  if (mddev->kobj.sd) {
   if (to_remove != &md_redundancy_group)
    sysfs_remove_group(&mddev->kobj, to_remove);
   if (mddev->pers == ((void*)0) ||
       mddev->pers->sync_request == ((void*)0)) {
    sysfs_remove_group(&mddev->kobj, &md_redundancy_group);
    if (mddev->sysfs_action)
     sysfs_put(mddev->sysfs_action);
    mddev->sysfs_action = ((void*)0);
   }
  }
  mddev->sysfs_active = 0;
 } else
  mutex_unlock(&mddev->reconfig_mutex);




 spin_lock(&pers_lock);
 md_wakeup_thread(mddev->thread);
 spin_unlock(&pers_lock);
}
