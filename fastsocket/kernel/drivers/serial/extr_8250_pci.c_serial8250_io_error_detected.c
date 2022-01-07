
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial_private {int dummy; } ;
struct pci_dev {int dummy; } ;
typedef int pci_ers_result_t ;
typedef scalar_t__ pci_channel_state_t ;


 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_NEED_RESET ;
 scalar_t__ pci_channel_io_perm_failure ;
 int pci_disable_device (struct pci_dev*) ;
 struct serial_private* pci_get_drvdata (struct pci_dev*) ;
 int pciserial_suspend_ports (struct serial_private*) ;

__attribute__((used)) static pci_ers_result_t serial8250_io_error_detected(struct pci_dev *dev,
      pci_channel_state_t state)
{
 struct serial_private *priv = pci_get_drvdata(dev);

 if (state == pci_channel_io_perm_failure)
  return PCI_ERS_RESULT_DISCONNECT;

 if (priv)
  pciserial_suspend_ports(priv);

 pci_disable_device(dev);

 return PCI_ERS_RESULT_NEED_RESET;
}
