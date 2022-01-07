
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dev; } ;


 int PCI_CAP_ID_MSIX ;
 int PCI_MSIX_FLAGS_QSIZE ;
 scalar_t__ PCI_MSI_FLAGS ;
 int dev_info (int *,char*) ;
 int pci_find_capability (struct pci_dev*,int ) ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,int*) ;

__attribute__((used)) static int bnx2x_get_num_non_def_sbs(struct pci_dev *pdev,
         int cnic_cnt, bool is_vf)
{
 int pos, index;
 u16 control = 0;

 pos = pci_find_capability(pdev, PCI_CAP_ID_MSIX);





 if (!pos) {
  dev_info(&pdev->dev, "no msix capability found\n");
  return 1 + cnic_cnt;
 }
 dev_info(&pdev->dev, "msix capability found\n");
 pci_read_config_word(pdev, pos + PCI_MSI_FLAGS, &control);

 index = control & PCI_MSIX_FLAGS_QSIZE;

 return is_vf ? index + 1 : index;
}
