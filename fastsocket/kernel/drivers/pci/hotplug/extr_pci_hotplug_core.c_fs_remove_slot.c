
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct pci_slot {int kobj; } ;
struct TYPE_14__ {int attr; } ;
struct TYPE_13__ {int attr; } ;
struct TYPE_12__ {int attr; } ;
struct TYPE_11__ {int attr; } ;
struct TYPE_10__ {int attr; } ;
struct TYPE_9__ {int attr; } ;
struct TYPE_8__ {int attr; } ;


 scalar_t__ has_adapter_file (struct pci_slot*) ;
 scalar_t__ has_attention_file (struct pci_slot*) ;
 scalar_t__ has_cur_bus_speed_file (struct pci_slot*) ;
 scalar_t__ has_latch_file (struct pci_slot*) ;
 scalar_t__ has_max_bus_speed_file (struct pci_slot*) ;
 scalar_t__ has_power_file (struct pci_slot*) ;
 scalar_t__ has_test_file (struct pci_slot*) ;
 TYPE_7__ hotplug_slot_attr_attention ;
 TYPE_6__ hotplug_slot_attr_cur_bus_speed ;
 TYPE_5__ hotplug_slot_attr_latch ;
 TYPE_4__ hotplug_slot_attr_max_bus_speed ;
 TYPE_3__ hotplug_slot_attr_power ;
 TYPE_2__ hotplug_slot_attr_presence ;
 TYPE_1__ hotplug_slot_attr_test ;
 int pci_hp_remove_module_link (struct pci_slot*) ;
 int sysfs_remove_file (int *,int *) ;

__attribute__((used)) static void fs_remove_slot(struct pci_slot *slot)
{
 if (has_power_file(slot))
  sysfs_remove_file(&slot->kobj, &hotplug_slot_attr_power.attr);

 if (has_attention_file(slot))
  sysfs_remove_file(&slot->kobj,
      &hotplug_slot_attr_attention.attr);

 if (has_latch_file(slot))
  sysfs_remove_file(&slot->kobj, &hotplug_slot_attr_latch.attr);

 if (has_adapter_file(slot))
  sysfs_remove_file(&slot->kobj,
      &hotplug_slot_attr_presence.attr);

 if (has_max_bus_speed_file(slot))
  sysfs_remove_file(&slot->kobj,
      &hotplug_slot_attr_max_bus_speed.attr);

 if (has_cur_bus_speed_file(slot))
  sysfs_remove_file(&slot->kobj,
      &hotplug_slot_attr_cur_bus_speed.attr);

 if (has_test_file(slot))
  sysfs_remove_file(&slot->kobj, &hotplug_slot_attr_test.attr);

 pci_hp_remove_module_link(slot);
}
