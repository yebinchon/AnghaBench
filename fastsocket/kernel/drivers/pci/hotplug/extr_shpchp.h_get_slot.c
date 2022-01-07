
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slot {int dummy; } ;
struct hotplug_slot {struct slot* private; } ;



__attribute__((used)) static inline struct slot *get_slot(struct hotplug_slot *hotplug_slot)
{
 return hotplug_slot->private;
}
