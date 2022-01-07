
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_host_bridge {int dummy; } ;
struct pci_dev {int dummy; } ;
struct pci_bus {int bridge; } ;


 struct pci_bus* find_pci_root_bus (struct pci_dev*) ;
 struct pci_host_bridge* to_pci_host_bridge (int ) ;

__attribute__((used)) static struct pci_host_bridge *find_pci_host_bridge(struct pci_dev *dev)
{
 struct pci_bus *bus = find_pci_root_bus(dev);

 return to_pci_host_bridge(bus->bridge);
}
