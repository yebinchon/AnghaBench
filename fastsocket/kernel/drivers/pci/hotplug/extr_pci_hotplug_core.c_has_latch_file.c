
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_slot {struct hotplug_slot* hotplug; } ;
struct hotplug_slot {TYPE_1__* ops; } ;
struct TYPE_2__ {scalar_t__ get_latch_status; } ;



__attribute__((used)) static bool has_latch_file(struct pci_slot *pci_slot)
{
 struct hotplug_slot *slot = pci_slot->hotplug;
 if ((!slot) || (!slot->ops))
  return 0;
 if (slot->ops->get_latch_status)
  return 1;
 return 0;
}
