
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_eckd_private {struct alias_pav_group* pavgroup; } ;
struct dasd_device {int alias_list; scalar_t__ private; } ;
struct alias_pav_group {struct dasd_device* next; int group; int aliaslist; int baselist; } ;
struct alias_lcu {int inactive_devices; } ;


 int kfree (struct alias_pav_group*) ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 int list_move (int *,int *) ;

__attribute__((used)) static void _remove_device_from_lcu(struct alias_lcu *lcu,
        struct dasd_device *device)
{
 struct dasd_eckd_private *private;
 struct alias_pav_group *group;

 private = (struct dasd_eckd_private *) device->private;
 list_move(&device->alias_list, &lcu->inactive_devices);
 group = private->pavgroup;
 if (!group)
  return;
 private->pavgroup = ((void*)0);
 if (list_empty(&group->baselist) && list_empty(&group->aliaslist)) {
  list_del(&group->group);
  kfree(group);
  return;
 }
 if (group->next == device)
  group->next = ((void*)0);
}
