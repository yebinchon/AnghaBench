
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * pci_base2; int * pci_base1; int * pci_base0; int * db_base; } ;
struct netxen_adapter {TYPE_1__ ahw; } ;


 int iounmap (int *) ;

__attribute__((used)) static void
netxen_cleanup_pci_map(struct netxen_adapter *adapter)
{
 if (adapter->ahw.db_base != ((void*)0))
  iounmap(adapter->ahw.db_base);
 if (adapter->ahw.pci_base0 != ((void*)0))
  iounmap(adapter->ahw.pci_base0);
 if (adapter->ahw.pci_base1 != ((void*)0))
  iounmap(adapter->ahw.pci_base1);
 if (adapter->ahw.pci_base2 != ((void*)0))
  iounmap(adapter->ahw.pci_base2);
}
