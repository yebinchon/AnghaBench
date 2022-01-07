
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int size; } ;
struct pci_dev {struct proc_dir_entry* procent; int cfg_size; int devfn; struct pci_bus* bus; } ;
struct pci_bus {int number; scalar_t__ procdir; } ;


 int EACCES ;
 int ENOMEM ;
 int PCI_FUNC (int ) ;
 int PCI_SLOT (int ) ;
 int S_IFREG ;
 int S_IRUGO ;
 int S_IWUSR ;
 int pci_domain_nr (struct pci_bus*) ;
 scalar_t__ pci_proc_domain (struct pci_bus*) ;
 int proc_bus_pci_dir ;
 int proc_bus_pci_operations ;
 struct proc_dir_entry* proc_create_data (char*,int,scalar_t__,int *,struct pci_dev*) ;
 int proc_initialized ;
 scalar_t__ proc_mkdir (char*,int ) ;
 int sprintf (char*,char*,int,...) ;

int pci_proc_attach_device(struct pci_dev *dev)
{
 struct pci_bus *bus = dev->bus;
 struct proc_dir_entry *e;
 char name[16];

 if (!proc_initialized)
  return -EACCES;

 if (!bus->procdir) {
  if (pci_proc_domain(bus)) {
   sprintf(name, "%04x:%02x", pci_domain_nr(bus),
     bus->number);
  } else {
   sprintf(name, "%02x", bus->number);
  }
  bus->procdir = proc_mkdir(name, proc_bus_pci_dir);
  if (!bus->procdir)
   return -ENOMEM;
 }

 sprintf(name, "%02x.%x", PCI_SLOT(dev->devfn), PCI_FUNC(dev->devfn));
 e = proc_create_data(name, S_IFREG | S_IRUGO | S_IWUSR, bus->procdir,
        &proc_bus_pci_operations, dev);
 if (!e)
  return -ENOMEM;
 e->size = dev->cfg_size;
 dev->procent = e;

 return 0;
}
