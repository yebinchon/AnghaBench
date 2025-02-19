
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct qlcnic_adapter {struct pci_dev* pdev; } ;
struct pci_dev {int devfn; } ;


 int PCI_EXT_CAP_ID_SRIOV ;
 scalar_t__ PCI_SRIOV_VF_OFFSET ;
 scalar_t__ PCI_SRIOV_VF_STRIDE ;
 int pci_find_ext_capability (struct pci_dev*,int ) ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,int*) ;
 scalar_t__ qlcnic_sriov_vf_check (struct qlcnic_adapter*) ;

__attribute__((used)) static int qlcnic_sriov_virtid_fn(struct qlcnic_adapter *adapter, int vf_id)
{
 struct pci_dev *dev = adapter->pdev;
 int pos;
 u16 stride, offset;

 if (qlcnic_sriov_vf_check(adapter))
  return 0;

 pos = pci_find_ext_capability(dev, PCI_EXT_CAP_ID_SRIOV);
 pci_read_config_word(dev, pos + PCI_SRIOV_VF_OFFSET, &offset);
 pci_read_config_word(dev, pos + PCI_SRIOV_VF_STRIDE, &stride);

 return (dev->devfn + offset + stride * vf_id) & 0xff;
}
