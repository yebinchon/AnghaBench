
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct net_device {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {struct e1000_hw hw; } ;
typedef int pci_ers_result_t ;


 int E1000_WUS ;
 int PCI_D3cold ;
 int PCI_D3hot ;
 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_RECOVERED ;
 int dev_err (int *,char*,...) ;
 int igb_reset (struct igb_adapter*) ;
 struct igb_adapter* netdev_priv (struct net_device*) ;
 int pci_cleanup_aer_uncorrect_error_status (struct pci_dev*) ;
 scalar_t__ pci_enable_device_mem (struct pci_dev*) ;
 int pci_enable_wake (struct pci_dev*,int ,int ) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_restore_state (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 int wr32 (int ,int ) ;

__attribute__((used)) static pci_ers_result_t igb_io_slot_reset(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct igb_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 pci_ers_result_t result;
 int err;

 if (pci_enable_device_mem(pdev)) {
  dev_err(&pdev->dev,
   "Cannot re-enable PCI device after reset.\n");
  result = PCI_ERS_RESULT_DISCONNECT;
 } else {
  pci_set_master(pdev);
  pci_restore_state(pdev);
  pci_save_state(pdev);

  pci_enable_wake(pdev, PCI_D3hot, 0);
  pci_enable_wake(pdev, PCI_D3cold, 0);

  igb_reset(adapter);
  wr32(E1000_WUS, ~0);
  result = PCI_ERS_RESULT_RECOVERED;
 }

 err = pci_cleanup_aer_uncorrect_error_status(pdev);
 if (err) {
  dev_err(&pdev->dev,
   "pci_cleanup_aer_uncorrect_error_status failed 0x%0x\n",
   err);

 }

 return result;
}
