
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct chipset_bus_clock_list_entry {scalar_t__ xfer_speed; scalar_t__ ultra_settings; } ;



__attribute__((used)) static u8 pci_bus_clock_list_ultra (u8 speed, struct chipset_bus_clock_list_entry * chipset_table)
{
 for ( ; chipset_table->xfer_speed ; chipset_table++)
  if (chipset_table->xfer_speed == speed) {
   return chipset_table->ultra_settings;
  }
 return chipset_table->ultra_settings;
}
