
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 int pcie_capability_read_dword (struct pci_dev*,int,int *) ;
 int pcie_capability_write_dword (struct pci_dev*,int,int ) ;

int pcie_capability_clear_and_set_dword(struct pci_dev *dev, int pos,
     u32 clear, u32 set)
{
 int ret;
 u32 val;

 ret = pcie_capability_read_dword(dev, pos, &val);
 if (!ret) {
  val &= ~clear;
  val |= set;
  ret = pcie_capability_write_dword(dev, pos, val);
 }

 return ret;
}
