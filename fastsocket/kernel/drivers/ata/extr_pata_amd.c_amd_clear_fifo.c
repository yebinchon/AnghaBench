
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;

__attribute__((used)) static void amd_clear_fifo(struct pci_dev *pdev)
{
 u8 fifo;


 pci_read_config_byte(pdev, 0x41, &fifo);
 fifo &= 0x0F;
 pci_write_config_byte(pdev, 0x41, fifo);
}
