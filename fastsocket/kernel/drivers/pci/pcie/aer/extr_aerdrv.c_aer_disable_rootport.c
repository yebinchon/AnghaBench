
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dummy; } ;
struct aer_rpc {TYPE_1__* rpd; } ;
struct TYPE_2__ {struct pci_dev* port; } ;


 scalar_t__ PCI_ERR_ROOT_COMMAND ;
 scalar_t__ PCI_ERR_ROOT_STATUS ;
 int PCI_EXT_CAP_ID_ERR ;
 int ROOT_PORT_INTR_ON_MESG_MASK ;
 int pci_find_ext_capability (struct pci_dev*,int ) ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int *) ;
 int pci_write_config_dword (struct pci_dev*,scalar_t__,int ) ;
 int set_downstream_devices_error_reporting (struct pci_dev*,int) ;

__attribute__((used)) static void aer_disable_rootport(struct aer_rpc *rpc)
{
 struct pci_dev *pdev = rpc->rpd->port;
 u32 reg32;
 int pos;





 set_downstream_devices_error_reporting(pdev, 0);

 pos = pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_ERR);

 pci_read_config_dword(pdev, pos + PCI_ERR_ROOT_COMMAND, &reg32);
 reg32 &= ~ROOT_PORT_INTR_ON_MESG_MASK;
 pci_write_config_dword(pdev, pos + PCI_ERR_ROOT_COMMAND, reg32);


 pci_read_config_dword(pdev, pos + PCI_ERR_ROOT_STATUS, &reg32);
 pci_write_config_dword(pdev, pos + PCI_ERR_ROOT_STATUS, reg32);
}
