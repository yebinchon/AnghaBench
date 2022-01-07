
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct pci_bus {int dummy; } ;
struct TYPE_2__ {int hotplug_lock; scalar_t__ hotplug_slot; scalar_t__ wlan_rfkill; } ;


 int eeepc_wlan_rfkill_blocked () ;
 TYPE_1__* ehotk ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ pci_bus_add_device (struct pci_dev*) ;
 int pci_bus_assign_resources (struct pci_bus*) ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_bus* pci_find_bus (int ,int) ;
 struct pci_dev* pci_get_slot (struct pci_bus*,int ) ;
 int pci_remove_bus_device (struct pci_dev*) ;
 struct pci_dev* pci_scan_single_device (struct pci_bus*,int ) ;
 int pr_err (char*) ;
 int pr_warning (char*) ;
 int rfkill_set_sw_state (scalar_t__,int) ;

__attribute__((used)) static void eeepc_rfkill_hotplug(void)
{
 struct pci_dev *dev;
 struct pci_bus *bus;
 bool blocked = eeepc_wlan_rfkill_blocked();

 if (ehotk->wlan_rfkill)
  rfkill_set_sw_state(ehotk->wlan_rfkill, blocked);

 mutex_lock(&ehotk->hotplug_lock);

 if (ehotk->hotplug_slot) {
  bus = pci_find_bus(0, 1);
  if (!bus) {
   pr_warning("Unable to find PCI bus 1?\n");
   goto out_unlock;
  }

  if (!blocked) {
   dev = pci_get_slot(bus, 0);
   if (dev) {

    pci_dev_put(dev);
    goto out_unlock;
   }
   dev = pci_scan_single_device(bus, 0);
   if (dev) {
    pci_bus_assign_resources(bus);
    if (pci_bus_add_device(dev))
     pr_err("Unable to hotplug wifi\n");
   }
  } else {
   dev = pci_get_slot(bus, 0);
   if (dev) {
    pci_remove_bus_device(dev);
    pci_dev_put(dev);
   }
  }
 }

out_unlock:
 mutex_unlock(&ehotk->hotplug_lock);
}
