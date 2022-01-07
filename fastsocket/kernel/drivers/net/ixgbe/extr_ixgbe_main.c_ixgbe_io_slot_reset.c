
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct ixgbe_adapter {int hw; } ;
typedef int pci_ers_result_t ;


 int IXGBE_WRITE_REG (int *,int ,int ) ;
 int IXGBE_WUS ;
 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_RECOVERED ;
 int e_dev_err (char*,int) ;
 int e_err (int ,char*) ;
 int ixgbe_reset (struct ixgbe_adapter*) ;
 int pci_cleanup_aer_uncorrect_error_status (struct pci_dev*) ;
 scalar_t__ pci_enable_device_mem (struct pci_dev*) ;
 struct ixgbe_adapter* pci_get_drvdata (struct pci_dev*) ;
 int pci_restore_state (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 int pci_wake_from_d3 (struct pci_dev*,int) ;
 int probe ;

__attribute__((used)) static pci_ers_result_t ixgbe_io_slot_reset(struct pci_dev *pdev)
{
 struct ixgbe_adapter *adapter = pci_get_drvdata(pdev);
 pci_ers_result_t result;
 int err;

 if (pci_enable_device_mem(pdev)) {
  e_err(probe, "Cannot re-enable PCI device after reset.\n");
  result = PCI_ERS_RESULT_DISCONNECT;
 } else {
  pci_set_master(pdev);
  pci_restore_state(pdev);
  pci_save_state(pdev);

  pci_wake_from_d3(pdev, 0);

  ixgbe_reset(adapter);
  IXGBE_WRITE_REG(&adapter->hw, IXGBE_WUS, ~0);
  result = PCI_ERS_RESULT_RECOVERED;
 }

 err = pci_cleanup_aer_uncorrect_error_status(pdev);
 if (err) {
  e_dev_err("pci_cleanup_aer_uncorrect_error_status "
     "failed 0x%0x\n", err);

 }

 return result;
}
