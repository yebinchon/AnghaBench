
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {struct list_head* prev; } ;
struct TYPE_2__ {scalar_t__ status; } ;
struct device {TYPE_1__ power; } ;
typedef int pm_message_t ;


 scalar_t__ DPM_ON ;
 int INIT_LIST_HEAD (struct list_head*) ;
 int device_complete (struct device*,int ) ;
 struct list_head dpm_list ;
 int dpm_list_mtx ;
 int get_device (struct device*) ;
 int list_empty (struct list_head*) ;
 int list_move (struct list_head*,struct list_head*) ;
 int list_splice (struct list_head*,struct list_head*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_put_noidle (struct device*) ;
 int put_device (struct device*) ;
 struct device* to_device (struct list_head*) ;
 int transition_started ;

__attribute__((used)) static void dpm_complete(pm_message_t state)
{
 struct list_head list, *entry;

 INIT_LIST_HEAD(&list);
 mutex_lock(&dpm_list_mtx);
 transition_started = 0;
 while (!list_empty(&dpm_list)) {
  struct device *dev = to_device(dpm_list.prev);
  entry = dpm_list.prev;

  get_device(dev);
  if (dev->power.status > DPM_ON) {
   dev->power.status = DPM_ON;
   mutex_unlock(&dpm_list_mtx);

   device_complete(dev, state);
   pm_runtime_put_noidle(dev);

   mutex_lock(&dpm_list_mtx);
  }
  if (!list_empty(entry))
   list_move(entry, &list);
  put_device(dev);
 }
 list_splice(&list, &dpm_list);
 mutex_unlock(&dpm_list_mtx);
}
