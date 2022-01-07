
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct r82600_error_info {int eapr; } ;
struct pci_dev {int dummy; } ;
struct mem_ctl_info {int dev; } ;


 int BIT (int) ;
 int R82600_EAP ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;
 int pci_write_bits32 (struct pci_dev*,int ,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void r82600_get_error_info(struct mem_ctl_info *mci,
    struct r82600_error_info *info)
{
 struct pci_dev *pdev;

 pdev = to_pci_dev(mci->dev);
 pci_read_config_dword(pdev, R82600_EAP, &info->eapr);

 if (info->eapr & BIT(0))

  pci_write_bits32(pdev, R82600_EAP,
     ((u32) BIT(0) & (u32) BIT(1)),
     ((u32) BIT(0) & (u32) BIT(1)));

 if (info->eapr & BIT(1))

  pci_write_bits32(pdev, R82600_EAP,
     ((u32) BIT(0) & (u32) BIT(1)),
     ((u32) BIT(0) & (u32) BIT(1)));
}
