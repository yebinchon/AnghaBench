
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hotplug_slot {struct hotplug_slot* private; struct hotplug_slot* info; } ;


 int kfree (struct hotplug_slot*) ;

__attribute__((used)) static void sn_release_slot(struct hotplug_slot *bss_hotplug_slot)
{
 kfree(bss_hotplug_slot->info);
 kfree(bss_hotplug_slot->private);
 kfree(bss_hotplug_slot);
}
