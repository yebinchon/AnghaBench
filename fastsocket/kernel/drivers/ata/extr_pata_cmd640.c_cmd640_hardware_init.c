
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 int ARTIM23 ;
 int BRST ;
 int CFR ;
 int CMDTIM ;
 int CNTRL ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;

__attribute__((used)) static void cmd640_hardware_init(struct pci_dev *pdev)
{
 u8 r;
 u8 ctrl;


 pci_write_config_byte(pdev, 0x5B, 0x00);

 pci_read_config_byte(pdev, CFR, &r);

 pci_write_config_byte(pdev, CMDTIM, 0);

 pci_write_config_byte(pdev, BRST, 0x40);
 pci_read_config_byte(pdev, CNTRL, &ctrl);
 pci_write_config_byte(pdev, CNTRL, ctrl | 0xC0);

 pci_read_config_byte(pdev, ARTIM23, &ctrl);
 ctrl |= 0x0C;
 pci_write_config_byte(pdev, ARTIM23, ctrl);
}
