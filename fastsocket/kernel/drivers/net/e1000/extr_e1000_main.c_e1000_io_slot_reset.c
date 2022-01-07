
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {scalar_t__ need_ioport; struct e1000_hw hw; } ;
typedef int pci_ers_result_t ;


 int PCI_D3cold ;
 int PCI_D3hot ;
 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_RECOVERED ;
 int WUS ;
 int e1000_reset (struct e1000_adapter*) ;
 int ew32 (int ,int ) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_enable_device_mem (struct pci_dev*) ;
 int pci_enable_wake (struct pci_dev*,int ,int ) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 int pr_err (char*) ;

__attribute__((used)) static pci_ers_result_t e1000_io_slot_reset(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 int err;

 if (adapter->need_ioport)
  err = pci_enable_device(pdev);
 else
  err = pci_enable_device_mem(pdev);
 if (err) {
  pr_err("Cannot re-enable PCI device after reset.\n");
  return PCI_ERS_RESULT_DISCONNECT;
 }
 pci_set_master(pdev);

 pci_enable_wake(pdev, PCI_D3hot, 0);
 pci_enable_wake(pdev, PCI_D3cold, 0);

 e1000_reset(adapter);
 ew32(WUS, ~0);

 return PCI_ERS_RESULT_RECOVERED;
}
