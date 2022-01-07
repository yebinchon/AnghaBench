
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slot {int number; TYPE_1__* hotplug_slot; } ;
struct TYPE_2__ {int name; } ;


 int SLOT_NAME_SIZE ;
 int snprintf (int ,int ,char*,int) ;

__attribute__((used)) static void make_slot_name(struct slot *slot)
{




 snprintf(slot->hotplug_slot->name, SLOT_NAME_SIZE, "%d", slot->number);
}
