
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct TYPE_3__ {struct list_head entry; } ;
struct device {TYPE_1__ power; int kobj; TYPE_2__* bus; } ;
struct dev_pm_info_entry {struct list_head entry; } ;
struct TYPE_4__ {char* name; } ;


 int dev_WARN (struct device*,char*) ;
 int dpm_list ;
 struct dev_pm_info_entry* get_dev_pm_info_entry (struct device*,int *) ;
 int kobject_name (int *) ;
 int list_move_tail (struct list_head*,int *) ;
 int pr_debug (char*,char*,int ) ;

void device_pm_move_last(struct device *dev)
{
 struct list_head *entry;




 pr_debug("PM: Moving %s:%s to end of list\n",
   dev->bus ? dev->bus->name : "No Bus",
   kobject_name(&dev->kobj));
 entry = &dev->power.entry;


 list_move_tail(entry, &dpm_list);
}
