
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ iobase; scalar_t__ membase; int pdev; } ;
typedef TYPE_1__ hfc4s8s_hw ;


 int PCI_COMMAND ;
 int iounmap (void*) ;
 int pci_write_config_word (int ,int ,int ) ;
 int release_region (scalar_t__,int) ;

__attribute__((used)) static void
release_pci_ports(hfc4s8s_hw * hw)
{
 pci_write_config_word(hw->pdev, PCI_COMMAND, 0);




 if (hw->iobase)
  release_region(hw->iobase, 8);

}
