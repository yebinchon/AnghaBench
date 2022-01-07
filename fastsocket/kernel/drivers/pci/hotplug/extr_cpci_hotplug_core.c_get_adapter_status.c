
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hotplug_slot {TYPE_1__* info; } ;
struct TYPE_2__ {int adapter_status; } ;



__attribute__((used)) static int
get_adapter_status(struct hotplug_slot *hotplug_slot, u8 * value)
{
 *value = hotplug_slot->info->adapter_status;
 return 0;
}
