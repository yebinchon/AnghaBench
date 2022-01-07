
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int entry; } ;
struct device {TYPE_1__ power; int kobj; TYPE_2__* bus; } ;
struct dev_pm_info_entry {int entry; } ;
struct TYPE_4__ {char* name; } ;


 int dev_WARN (struct device*,char*) ;
 int dpm_list ;
 int dpm_list_mtx ;
 struct dev_pm_info_entry* get_dev_pm_info_entry (struct device*,int *) ;
 int kfree (struct dev_pm_info_entry*) ;
 int kobject_name (int *) ;
 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_remove (struct device*) ;
 int pr_debug (char*,char*,int ) ;

void device_pm_remove(struct device *dev)
{




 pr_debug("PM: Removing info for %s:%s\n",
   dev->bus ? dev->bus->name : "No Bus",
   kobject_name(&dev->kobj));
 mutex_lock(&dpm_list_mtx);
 list_del_init(&dev->power.entry);


 mutex_unlock(&dpm_list_mtx);
 pm_runtime_remove(dev);
}
