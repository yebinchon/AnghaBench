
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int name; } ;
struct pci_bus {struct proc_dir_entry* procdir; } ;


 int proc_bus_pci_dir ;
 int remove_proc_entry (int ,int ) ;

int pci_proc_detach_bus(struct pci_bus* bus)
{
 struct proc_dir_entry *de = bus->procdir;
 if (de)
  remove_proc_entry(de->name, proc_bus_pci_dir);
 return 0;
}
