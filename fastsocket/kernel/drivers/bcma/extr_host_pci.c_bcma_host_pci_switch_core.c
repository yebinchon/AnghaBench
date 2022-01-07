
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; } ;
struct bcma_device {TYPE_1__ id; TYPE_2__* bus; int wrap; int addr; } ;
struct TYPE_4__ {struct bcma_device* mapped_core; int host_pci; } ;


 int BCMA_PCI_BAR0_WIN ;
 int BCMA_PCI_BAR0_WIN2 ;
 int bcma_debug (TYPE_2__*,char*,int ) ;
 int pci_write_config_dword (int ,int ,int ) ;

__attribute__((used)) static void bcma_host_pci_switch_core(struct bcma_device *core)
{
 pci_write_config_dword(core->bus->host_pci, BCMA_PCI_BAR0_WIN,
          core->addr);
 pci_write_config_dword(core->bus->host_pci, BCMA_PCI_BAR0_WIN2,
          core->wrap);
 core->bus->mapped_core = core;
 bcma_debug(core->bus, "Switched to core: 0x%X\n", core->id.id);
}
