
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int devfn; } ;


 int PCI_FUNC (int ) ;
 int amd64_warn (char*,char const*,int ,int) ;
 int pci_read_config_dword (struct pci_dev*,int,int *) ;

__attribute__((used)) static int __amd64_read_pci_cfg_dword(struct pci_dev *pdev, int offset,
          u32 *val, const char *func)
{
 int err = 0;

 err = pci_read_config_dword(pdev, offset, val);
 if (err)
  amd64_warn("%s: error reading F%dx%03x.\n",
      func, PCI_FUNC(pdev->devfn), offset);

 return err;
}
