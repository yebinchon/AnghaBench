
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dasd_uid {scalar_t__ type; size_t real_unit_addr; size_t base_unit_addr; int vduit; int ssid; int serial; int vendor; } ;
struct dasd_eckd_private {struct alias_pav_group* pavgroup; struct dasd_uid uid; } ;
struct dasd_device {int alias_list; int cdev; scalar_t__ private; } ;
struct TYPE_6__ {size_t base_unit_addr; int vduit; int ssid; int serial; int vendor; } ;
struct alias_pav_group {int aliaslist; int baselist; int group; TYPE_3__ uid; } ;
struct alias_lcu {scalar_t__ pav; int grouplist; int active_devices; TYPE_2__* uac; } ;
struct TYPE_5__ {TYPE_1__* unit; } ;
struct TYPE_4__ {scalar_t__ ua_type; size_t base_ua; } ;


 int CDEV_NESTED_SECOND ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ NO_PAV ;
 scalar_t__ UA_BASE_DEVICE ;
 struct alias_pav_group* _find_group (struct alias_lcu*,struct dasd_uid*) ;
 int get_ccwdev_lock (int ) ;
 struct alias_pav_group* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int list_move (int *,int *) ;
 int memcpy (int ,int ,int) ;
 int spin_lock_irqsave_nested (int ,unsigned long,int ) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static int _add_device_to_lcu(struct alias_lcu *lcu,
         struct dasd_device *device,
         struct dasd_device *pos)
{

 struct dasd_eckd_private *private;
 struct alias_pav_group *group;
 struct dasd_uid uid;
 unsigned long flags;

 private = (struct dasd_eckd_private *) device->private;


 if (device != pos)
  spin_lock_irqsave_nested(get_ccwdev_lock(device->cdev), flags,
      CDEV_NESTED_SECOND);
 private->uid.type = lcu->uac->unit[private->uid.real_unit_addr].ua_type;
 private->uid.base_unit_addr =
  lcu->uac->unit[private->uid.real_unit_addr].base_ua;
 uid = private->uid;

 if (device != pos)
  spin_unlock_irqrestore(get_ccwdev_lock(device->cdev), flags);


 if (lcu->pav == NO_PAV) {
  list_move(&device->alias_list, &lcu->active_devices);
  return 0;
 }

 group = _find_group(lcu, &uid);
 if (!group) {
  group = kzalloc(sizeof(*group), GFP_ATOMIC);
  if (!group)
   return -ENOMEM;
  memcpy(group->uid.vendor, uid.vendor, sizeof(uid.vendor));
  memcpy(group->uid.serial, uid.serial, sizeof(uid.serial));
  group->uid.ssid = uid.ssid;
  if (uid.type == UA_BASE_DEVICE)
   group->uid.base_unit_addr = uid.real_unit_addr;
  else
   group->uid.base_unit_addr = uid.base_unit_addr;
  memcpy(group->uid.vduit, uid.vduit, sizeof(uid.vduit));
  INIT_LIST_HEAD(&group->group);
  INIT_LIST_HEAD(&group->baselist);
  INIT_LIST_HEAD(&group->aliaslist);
  list_add(&group->group, &lcu->grouplist);
 }
 if (uid.type == UA_BASE_DEVICE)
  list_move(&device->alias_list, &group->baselist);
 else
  list_move(&device->alias_list, &group->aliaslist);
 private->pavgroup = group;
 return 0;
}
