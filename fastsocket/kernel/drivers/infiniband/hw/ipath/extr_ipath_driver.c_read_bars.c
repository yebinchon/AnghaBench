
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;
struct ipath_devdata {int dummy; } ;


 int PCI_BASE_ADDRESS_0 ;
 int PCI_BASE_ADDRESS_1 ;
 int ipath_dbg (char*,int ,int ) ;
 int ipath_dev_err (struct ipath_devdata*,char*,int) ;
 int pci_read_config_dword (struct pci_dev*,int ,int *) ;

__attribute__((used)) static inline void read_bars(struct ipath_devdata *dd, struct pci_dev *dev,
        u32 *bar0, u32 *bar1)
{
 int ret;

 ret = pci_read_config_dword(dev, PCI_BASE_ADDRESS_0, bar0);
 if (ret)
  ipath_dev_err(dd, "failed to read bar0 before enable: "
         "error %d\n", -ret);

 ret = pci_read_config_dword(dev, PCI_BASE_ADDRESS_1, bar1);
 if (ret)
  ipath_dev_err(dd, "failed to read bar1 before enable: "
         "error %d\n", -ret);

 ipath_dbg("Read bar0 %x bar1 %x\n", *bar0, *bar1);
}
