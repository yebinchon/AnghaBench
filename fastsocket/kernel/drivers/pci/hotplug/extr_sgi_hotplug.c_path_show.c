
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slot {char* physical_path; } ;
struct pci_slot {TYPE_1__* hotplug; } ;
typedef int ssize_t ;
struct TYPE_2__ {struct slot* private; } ;


 int ENOENT ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t path_show(struct pci_slot *pci_slot, char *buf)
{
 int retval = -ENOENT;
 struct slot *slot = pci_slot->hotplug->private;

 if (!slot)
  return retval;

 retval = sprintf (buf, "%s\n", slot->physical_path);
 return retval;
}
