
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
struct pci_dev {int dummy; } ;


 int PCI_CACHE_LINE_SIZE ;
 int pci_read_config_byte (struct pci_dev*,int ,unsigned char*) ;

__attribute__((used)) static unsigned char sil_get_device_cache_line(struct pci_dev *pdev)
{
 u8 cache_line = 0;
 pci_read_config_byte(pdev, PCI_CACHE_LINE_SIZE, &cache_line);
 return cache_line;
}
