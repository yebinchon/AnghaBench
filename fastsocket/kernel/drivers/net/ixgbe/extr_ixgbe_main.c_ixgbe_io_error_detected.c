
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct pci_dev {int devfn; TYPE_1__* bus; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int type; } ;
struct TYPE_6__ {TYPE_2__ mac; } ;
struct ixgbe_adapter {scalar_t__ num_vfs; int vferr_refcount; TYPE_3__ hw; struct net_device* netdev; } ;
typedef int pci_ers_result_t ;
typedef scalar_t__ pci_channel_state_t ;
struct TYPE_4__ {struct pci_dev* self; } ;


 unsigned int IXGBE_82599_VF_DEVICE_ID ;
 unsigned int IXGBE_X540_VF_DEVICE_ID ;
 scalar_t__ PCI_ERR_HEADER_LOG ;
 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_NEED_RESET ;
 int PCI_ERS_RESULT_RECOVERED ;
 scalar_t__ PCI_EXP_TYPE_ROOT_PORT ;
 int PCI_EXT_CAP_ID_ERR ;
 int PCI_VENDOR_ID_INTEL ;
 int e_dev_err (char*,int,...) ;
 int ixgbe_down (struct ixgbe_adapter*) ;
 int ixgbe_mac_82598EB ;


 int netif_device_detach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 scalar_t__ pci_channel_io_perm_failure ;
 int pci_cleanup_aer_uncorrect_error_status (struct pci_dev*) ;
 int pci_dev_put (struct pci_dev*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_find_ext_capability (struct pci_dev*,int ) ;
 struct pci_dev* pci_get_device (int ,unsigned int,struct pci_dev*) ;
 struct ixgbe_adapter* pci_get_drvdata (struct pci_dev*) ;
 scalar_t__ pci_pcie_type (struct pci_dev*) ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int*) ;
 int pci_write_config_dword (struct pci_dev*,int,int) ;

__attribute__((used)) static pci_ers_result_t ixgbe_io_error_detected(struct pci_dev *pdev,
      pci_channel_state_t state)
{
 struct ixgbe_adapter *adapter = pci_get_drvdata(pdev);
 struct net_device *netdev = adapter->netdev;
 netif_device_detach(netdev);

 if (state == pci_channel_io_perm_failure)
  return PCI_ERS_RESULT_DISCONNECT;

 if (netif_running(netdev))
  ixgbe_down(adapter);
 pci_disable_device(pdev);


 return PCI_ERS_RESULT_NEED_RESET;
}
