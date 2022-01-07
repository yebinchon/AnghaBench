
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct slot {int power_domain; } ;
struct hotplug_slot {scalar_t__ private; } ;


 int rtas_get_power_level (int ,int*) ;

__attribute__((used)) static int get_power_status(struct hotplug_slot *hotplug_slot, u8 * value)
{
 int retval, level;
 struct slot *slot = (struct slot *)hotplug_slot->private;

 retval = rtas_get_power_level (slot->power_domain, &level);
 if (!retval)
  *value = level;
 return retval;
}
