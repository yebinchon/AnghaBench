
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc_dir_entry {int name; } ;
struct pci_dev {struct proc_dir_entry* procent; TYPE_1__* bus; } ;
struct TYPE_2__ {int procdir; } ;


 int remove_proc_entry (int ,int ) ;

int pci_proc_detach_device(struct pci_dev *dev)
{
 struct proc_dir_entry *e;

 if ((e = dev->procent)) {
  remove_proc_entry(e->name, dev->bus->procdir);
  dev->procent = ((void*)0);
 }
 return 0;
}
