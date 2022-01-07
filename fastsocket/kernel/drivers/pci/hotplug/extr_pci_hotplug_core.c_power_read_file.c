
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_slot {int hotplug; } ;
typedef int ssize_t ;


 int get_power_status (int ,int*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t power_read_file(struct pci_slot *slot, char *buf)
{
 int retval;
 u8 value;

 retval = get_power_status(slot->hotplug, &value);
 if (retval)
  goto exit;
 retval = sprintf (buf, "%d\n", value);
exit:
 return retval;
}
