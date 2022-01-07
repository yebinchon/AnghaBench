
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {struct list_head* prev; } ;
struct TYPE_2__ {int status; } ;
struct device {TYPE_1__ power; } ;
typedef int pm_message_t ;


 int DPM_OFF ;
 int INIT_LIST_HEAD (struct list_head*) ;
 int device_suspend (struct device*,int ) ;
 struct list_head dpm_list ;
 int dpm_list_mtx ;
 int get_device (struct device*) ;
 int list_empty (struct list_head*) ;
 int list_move (struct list_head*,struct list_head*) ;
 int list_splice (struct list_head*,struct list_head*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_dev_err (struct device*,int ,char*,int) ;
 int put_device (struct device*) ;
 struct device* to_device (struct list_head*) ;

__attribute__((used)) static int dpm_suspend(pm_message_t state)
{
 struct list_head list, *entry;
 int error = 0;

 INIT_LIST_HEAD(&list);
 mutex_lock(&dpm_list_mtx);
 while (!list_empty(&dpm_list)) {
  struct device *dev = to_device(dpm_list.prev);
  entry = dpm_list.prev;

  get_device(dev);
  mutex_unlock(&dpm_list_mtx);

  error = device_suspend(dev, state);

  mutex_lock(&dpm_list_mtx);
  if (error) {
   pm_dev_err(dev, state, "", error);
   put_device(dev);
   break;
  }
  dev->power.status = DPM_OFF;
  if (!list_empty(entry))
   list_move(entry, &list);
  put_device(dev);
 }
 list_splice(&list, dpm_list.prev);
 mutex_unlock(&dpm_list_mtx);
 return error;
}
