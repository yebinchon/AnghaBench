
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct mem_ctl_info {int dev; } ;


 int I3200_ERRSTS ;
 int I3200_ERRSTS_BITS ;
 int pci_write_bits16 (struct pci_dev*,int ,int ,int ) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void i3200_clear_error_info(struct mem_ctl_info *mci)
{
 struct pci_dev *pdev;

 pdev = to_pci_dev(mci->dev);





 pci_write_bits16(pdev, I3200_ERRSTS, I3200_ERRSTS_BITS,
  I3200_ERRSTS_BITS);
}
