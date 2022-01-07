
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slot {int hotplug_slot; } ;


 char const* hotplug_slot_name (int ) ;

__attribute__((used)) static inline const char *slot_name(struct slot *slot)
{
 return hotplug_slot_name(slot->hotplug_slot);
}
