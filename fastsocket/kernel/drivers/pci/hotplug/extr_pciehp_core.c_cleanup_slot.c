
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct controller {TYPE_1__* slot; } ;
struct TYPE_2__ {int hotplug_slot; } ;


 int pci_hp_deregister (int ) ;

__attribute__((used)) static void cleanup_slot(struct controller *ctrl)
{
 pci_hp_deregister(ctrl->slot->hotplug_slot);
}
