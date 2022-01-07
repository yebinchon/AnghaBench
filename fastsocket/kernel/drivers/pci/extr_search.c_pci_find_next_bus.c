
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct list_head* next; } ;
struct pci_bus {TYPE_1__ node; } ;
struct list_head {struct list_head* next; } ;


 int WARN_ON (int ) ;
 int down_read (int *) ;
 int in_interrupt () ;
 struct pci_bus* pci_bus_b (struct list_head*) ;
 int pci_bus_sem ;
 struct list_head pci_root_buses ;
 int up_read (int *) ;

struct pci_bus *
pci_find_next_bus(const struct pci_bus *from)
{
 struct list_head *n;
 struct pci_bus *b = ((void*)0);

 WARN_ON(in_interrupt());
 down_read(&pci_bus_sem);
 n = from ? from->node.next : pci_root_buses.next;
 if (n != &pci_root_buses)
  b = pci_bus_b(n);
 up_read(&pci_bus_sem);
 return b;
}
