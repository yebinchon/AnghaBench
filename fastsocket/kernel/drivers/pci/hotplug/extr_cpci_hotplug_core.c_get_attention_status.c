
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct slot {int dummy; } ;
struct hotplug_slot {struct slot* private; } ;


 int cpci_get_attention_status (struct slot*) ;

__attribute__((used)) static int
get_attention_status(struct hotplug_slot *hotplug_slot, u8 * value)
{
 struct slot *slot = hotplug_slot->private;

 *value = cpci_get_attention_status(slot);
 return 0;
}
