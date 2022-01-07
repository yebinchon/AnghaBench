
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pvr2_sysfs_ctl_item {int grp; scalar_t__ created_ok; struct pvr2_sysfs_ctl_item* item_next; } ;
struct pvr2_sysfs {TYPE_1__* class_dev; struct pvr2_sysfs_ctl_item* item_first; } ;
struct TYPE_2__ {int kobj; } ;


 int kfree (struct pvr2_sysfs_ctl_item*) ;
 int pvr2_sysfs_trace (char*,struct pvr2_sysfs_ctl_item*) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static void pvr2_sysfs_tear_down_controls(struct pvr2_sysfs *sfp)
{
 struct pvr2_sysfs_ctl_item *cip1,*cip2;
 for (cip1 = sfp->item_first; cip1; cip1 = cip2) {
  cip2 = cip1->item_next;
  if (cip1->created_ok) {
   sysfs_remove_group(&sfp->class_dev->kobj,&cip1->grp);
  }
  pvr2_sysfs_trace("Destroying pvr2_sysfs_ctl_item id=%p",cip1);
  kfree(cip1);
 }
}
