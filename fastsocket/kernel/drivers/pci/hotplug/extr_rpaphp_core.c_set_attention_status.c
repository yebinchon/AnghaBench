
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct slot {int index; } ;
struct hotplug_slot {TYPE_1__* info; scalar_t__ private; } ;
struct TYPE_2__ {int attention_status; } ;


 int DR_INDICATOR ;
 int rtas_set_indicator (int ,int ,int) ;

__attribute__((used)) static int set_attention_status(struct hotplug_slot *hotplug_slot, u8 value)
{
 int rc;
 struct slot *slot = (struct slot *)hotplug_slot->private;

 switch (value) {
 case 0:
 case 1:
 case 2:
  break;
 default:
  value = 1;
  break;
 }

 rc = rtas_set_indicator(DR_INDICATOR, slot->index, value);
 if (!rc)
  hotplug_slot->info->attention_status = value;

 return rc;
}
