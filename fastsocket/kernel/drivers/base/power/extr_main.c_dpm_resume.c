
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {struct list_head* next; } ;
struct TYPE_2__ {scalar_t__ status; } ;
struct device {TYPE_1__ power; } ;
typedef int pm_message_t ;


 scalar_t__ DPM_OFF ;
 void* DPM_RESUMING ;
 scalar_t__ DPM_SUSPENDING ;
 int INIT_LIST_HEAD (struct list_head*) ;
 int device_resume (struct device*,int ) ;
 struct list_head dpm_list ;
 int dpm_list_mtx ;
 int get_device (struct device*) ;
 int list_empty (struct list_head*) ;
 int list_move_tail (struct list_head*,struct list_head*) ;
 int list_splice (struct list_head*,struct list_head*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_dev_err (struct device*,int ,char*,int) ;
 int put_device (struct device*) ;
 struct device* to_device (struct list_head*) ;

__attribute__((used)) static void dpm_resume(pm_message_t state)
{
 struct list_head list;
 struct list_head *entry;

 INIT_LIST_HEAD(&list);
 mutex_lock(&dpm_list_mtx);
 while (!list_empty(&dpm_list)) {
  struct device *dev = to_device(dpm_list.next);
  entry = dpm_list.next;

  get_device(dev);
  if (dev->power.status >= DPM_OFF) {
   int error;

   dev->power.status = DPM_RESUMING;
   mutex_unlock(&dpm_list_mtx);

   error = device_resume(dev, state);

   mutex_lock(&dpm_list_mtx);
   if (error)
    pm_dev_err(dev, state, "", error);
  } else if (dev->power.status == DPM_SUSPENDING) {

   dev->power.status = DPM_RESUMING;
  }
  if (!list_empty(entry))
   list_move_tail(entry, &list);
  put_device(dev);
 }
 list_splice(&list, &dpm_list);
 mutex_unlock(&dpm_list_mtx);
}
