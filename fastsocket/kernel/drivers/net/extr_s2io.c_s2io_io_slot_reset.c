
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s2io_nic {int dummy; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
typedef int pci_ers_result_t ;


 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_RECOVERED ;
 struct s2io_nic* netdev_priv (struct net_device*) ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 int pr_err (char*) ;
 int s2io_reset (struct s2io_nic*) ;

__attribute__((used)) static pci_ers_result_t s2io_io_slot_reset(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct s2io_nic *sp = netdev_priv(netdev);

 if (pci_enable_device(pdev)) {
  pr_err("Cannot re-enable PCI device after reset.\n");
  return PCI_ERS_RESULT_DISCONNECT;
 }

 pci_set_master(pdev);
 s2io_reset(sp);

 return PCI_ERS_RESULT_RECOVERED;
}
