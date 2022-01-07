
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int __vga_set_legacy_decoding (struct pci_dev*,unsigned int,int) ;

void vga_set_legacy_decoding(struct pci_dev *pdev, unsigned int decodes)
{
 __vga_set_legacy_decoding(pdev, decodes, 0);
}
