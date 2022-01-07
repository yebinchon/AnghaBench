
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct pci_ops {int (* read ) (struct pci_bus*,unsigned int,int,int,int *) ;} ;
struct pci_bus {int number; } ;
struct aer_error {int dummy; } ;


 struct aer_error* __find_aer_error (int ,int ,unsigned int) ;
 struct pci_ops* __find_pci_bus_ops (struct pci_bus*) ;
 int * find_pci_config_dword (struct aer_error*,int,int *) ;
 int inject_lock ;
 int pci_domain_nr (struct pci_bus*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct pci_bus*,unsigned int,int,int,int *) ;

__attribute__((used)) static int pci_read_aer(struct pci_bus *bus, unsigned int devfn, int where,
   int size, u32 *val)
{
 u32 *sim;
 struct aer_error *err;
 unsigned long flags;
 struct pci_ops *ops;
 int domain;

 spin_lock_irqsave(&inject_lock, flags);
 if (size != sizeof(u32))
  goto out;
 domain = pci_domain_nr(bus);
 if (domain < 0)
  goto out;
 err = __find_aer_error((u16)domain, bus->number, devfn);
 if (!err)
  goto out;

 sim = find_pci_config_dword(err, where, ((void*)0));
 if (sim) {
  *val = *sim;
  spin_unlock_irqrestore(&inject_lock, flags);
  return 0;
 }
out:
 ops = __find_pci_bus_ops(bus);
 spin_unlock_irqrestore(&inject_lock, flags);
 return ops->read(bus, devfn, where, size, val);
}
