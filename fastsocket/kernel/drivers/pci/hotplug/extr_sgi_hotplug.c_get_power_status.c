
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct slot {int device_num; int pci_bus; } ;
struct pcibus_info {int pbi_enabled_devices; } ;
struct hotplug_slot {struct slot* private; } ;


 struct pcibus_info* SN_PCIBUS_BUSSOFT_INFO (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sn_hotplug_mutex ;

__attribute__((used)) static inline int get_power_status(struct hotplug_slot *bss_hotplug_slot,
       u8 *value)
{
 struct slot *slot = bss_hotplug_slot->private;
 struct pcibus_info *pcibus_info;
 u32 power;

 pcibus_info = SN_PCIBUS_BUSSOFT_INFO(slot->pci_bus);
 mutex_lock(&sn_hotplug_mutex);
 power = pcibus_info->pbi_enabled_devices & (1 << slot->device_num);
 *value = power ? 1 : 0;
 mutex_unlock(&sn_hotplug_mutex);
 return 0;
}
