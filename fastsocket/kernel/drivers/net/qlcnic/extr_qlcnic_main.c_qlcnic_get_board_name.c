
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_adapter {int mac_addr; struct pci_dev* pdev; } ;
struct pci_dev {scalar_t__ vendor; scalar_t__ device; } ;
struct TYPE_2__ {scalar_t__ vendor; scalar_t__ device; char* short_name; } ;


 int NUM_SUPPORTED_BOARDS ;
 TYPE_1__* qlcnic_boards ;
 scalar_t__ qlcnic_validate_subsystem_id (struct qlcnic_adapter*,int) ;
 int sprintf (char*,char*,int ,...) ;

__attribute__((used)) static void qlcnic_get_board_name(struct qlcnic_adapter *adapter, char *name)
{
 struct pci_dev *pdev = adapter->pdev;
 int i, found = 0;

 for (i = 0; i < NUM_SUPPORTED_BOARDS; ++i) {
  if (qlcnic_boards[i].vendor == pdev->vendor &&
      qlcnic_boards[i].device == pdev->device &&
      qlcnic_validate_subsystem_id(adapter, i)) {
   found = 1;
   break;
  }
 }

 if (!found)
  sprintf(name, "%pM Gigabit Ethernet", adapter->mac_addr);
 else
  sprintf(name, "%pM: %s" , adapter->mac_addr,
   qlcnic_boards[i].short_name);
}
