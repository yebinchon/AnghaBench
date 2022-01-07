
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct TYPE_4__ {struct list_head entry; } ;
struct device {TYPE_2__ power; int kobj; TYPE_1__* bus; } ;
struct dev_pm_info_entry {struct list_head entry; } ;
struct TYPE_3__ {char* name; } ;


 int dev_WARN (struct device*,char*) ;
 int dpm_list ;
 struct dev_pm_info_entry* get_dev_pm_info_entry (struct device*,int *) ;
 int kobject_name (int *) ;
 int list_move_tail (struct list_head*,struct list_head*) ;
 int pr_debug (char*,char*,int ,char*,int ) ;

void device_pm_move_after(struct device *deva, struct device *devb)
{
 struct list_head *entrya, *entryb;




 pr_debug("PM: Moving %s:%s after %s:%s\n",
   deva->bus ? deva->bus->name : "No Bus",
   kobject_name(&deva->kobj),
   devb->bus ? devb->bus->name : "No Bus",
   kobject_name(&devb->kobj));
 entrya = &deva->power.entry;
 entryb = &devb->power.entry;



 list_move_tail(entrya, entryb);
}
