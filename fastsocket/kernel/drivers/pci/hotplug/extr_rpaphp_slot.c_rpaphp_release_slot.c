
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slot {int dummy; } ;
struct hotplug_slot {scalar_t__ private; } ;


 int dealloc_slot_struct (struct slot*) ;

__attribute__((used)) static void rpaphp_release_slot(struct hotplug_slot *hotplug_slot)
{
 struct slot *slot = (struct slot *) hotplug_slot->private;
 dealloc_slot_struct(slot);
}
