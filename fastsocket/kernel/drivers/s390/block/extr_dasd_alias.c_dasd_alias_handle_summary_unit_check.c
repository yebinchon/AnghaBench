
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irb {int dummy; } ;
struct dasd_eckd_private {struct alias_lcu* lcu; } ;
struct dasd_device {int alias_list; scalar_t__ private; } ;
struct TYPE_2__ {char reason; int worker; struct dasd_device* device; } ;
struct alias_lcu {int flags; TYPE_1__ suc_data; int lock; } ;


 int DBF_DEV_EVENT (int ,struct dasd_device*,char*,char*,...) ;
 int DBF_NOTICE ;
 int DBF_WARNING ;
 int NEED_UAC_UPDATE ;
 int UPDATE_PENDING ;
 int _stop_all_devices_on_lcu (struct alias_lcu*,struct dasd_device*) ;
 char* dasd_get_sense (struct irb*) ;
 scalar_t__ list_empty (int *) ;
 int schedule_work (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void dasd_alias_handle_summary_unit_check(struct dasd_device *device,
       struct irb *irb)
{
 struct alias_lcu *lcu;
 char reason;
 struct dasd_eckd_private *private;
 char *sense;

 private = (struct dasd_eckd_private *) device->private;

 sense = dasd_get_sense(irb);
 if (sense) {
  reason = sense[8];
  DBF_DEV_EVENT(DBF_NOTICE, device, "%s %x",
       "eckd handle summary unit check: reason", reason);
 } else {
  DBF_DEV_EVENT(DBF_WARNING, device, "%s",
       "eckd handle summary unit check:"
       " no reason code available");
  return;
 }

 lcu = private->lcu;
 if (!lcu) {
  DBF_DEV_EVENT(DBF_WARNING, device, "%s",
       "device not ready to handle summary"
       " unit check (no lcu structure)");
  return;
 }
 spin_lock(&lcu->lock);
 _stop_all_devices_on_lcu(lcu, device);

 private->lcu->flags |= NEED_UAC_UPDATE | UPDATE_PENDING;



 if (list_empty(&device->alias_list)) {
  DBF_DEV_EVENT(DBF_WARNING, device, "%s",
       "device is in offline processing,"
       " don't do summary unit check handling");
  spin_unlock(&lcu->lock);
  return;
 }
 if (lcu->suc_data.device) {

  DBF_DEV_EVENT(DBF_WARNING, device, "%s",
       "previous instance of summary unit check worker"
       " still pending");
  spin_unlock(&lcu->lock);
  return ;
 }
 lcu->suc_data.reason = reason;
 lcu->suc_data.device = device;
 spin_unlock(&lcu->lock);
 schedule_work(&lcu->suc_data.worker);
}
