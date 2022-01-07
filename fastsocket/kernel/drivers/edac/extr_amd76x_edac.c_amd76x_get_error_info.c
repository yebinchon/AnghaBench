
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;
struct mem_ctl_info {int dev; } ;
struct amd76x_error_info {int ecc_mode_status; } ;


 int AMD76X_ECC_MODE_STATUS ;
 int BIT (int) ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;
 int pci_write_bits32 (struct pci_dev*,int ,int ,int ) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void amd76x_get_error_info(struct mem_ctl_info *mci,
    struct amd76x_error_info *info)
{
 struct pci_dev *pdev;

 pdev = to_pci_dev(mci->dev);
 pci_read_config_dword(pdev, AMD76X_ECC_MODE_STATUS,
   &info->ecc_mode_status);

 if (info->ecc_mode_status & BIT(8))
  pci_write_bits32(pdev, AMD76X_ECC_MODE_STATUS,
     (u32) BIT(8), (u32) BIT(8));

 if (info->ecc_mode_status & BIT(9))
  pci_write_bits32(pdev, AMD76X_ECC_MODE_STATUS,
     (u32) BIT(9), (u32) BIT(9));
}
