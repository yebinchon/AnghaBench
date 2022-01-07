
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct slot {TYPE_2__* hotplug_slot; } ;
struct hotplug_slot {scalar_t__ private; } ;
struct TYPE_4__ {TYPE_1__* info; } ;
struct TYPE_3__ {int attention_status; } ;



__attribute__((used)) static int get_attention_status(struct hotplug_slot *hotplug_slot, u8 * value)
{
 struct slot *slot = (struct slot *)hotplug_slot->private;
 *value = slot->hotplug_slot->info->attention_status;
 return 0;
}
