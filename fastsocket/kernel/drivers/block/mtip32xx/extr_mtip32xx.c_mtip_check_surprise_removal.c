
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;


 int pci_read_config_word (struct pci_dev*,int,int*) ;

__attribute__((used)) static bool mtip_check_surprise_removal(struct pci_dev *pdev)
{
 u16 vendor_id = 0;


 pci_read_config_word(pdev, 0x00, &vendor_id);
 if (vendor_id == 0xFFFF)
  return 1;

 return 0;
}
