
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct pci_dev {int dummy; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct ata_device {int devno; scalar_t__ dma_mode; } ;
struct TYPE_2__ {int dev; } ;


 size_t XFER_MW_DMA_0 ;
 scalar_t__ XFER_UDMA_0 ;
 int pci_read_config_byte (struct pci_dev*,unsigned long,int*) ;
 int pci_read_config_word (struct pci_dev*,unsigned long,int*) ;
 int pci_write_config_byte (struct pci_dev*,unsigned long,int) ;
 int pci_write_config_word (struct pci_dev*,unsigned long,int) ;
 unsigned long sil680_seldev (struct ata_port*,struct ata_device*,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void sil680_set_dmamode(struct ata_port *ap, struct ata_device *adev)
{
 static u8 ultra_table[2][7] = {
  { 0x0C, 0x07, 0x05, 0x04, 0x02, 0x01, 0xFF },
  { 0x0F, 0x0B, 0x07, 0x05, 0x03, 0x02, 0x01 },
 };
 static u16 dma_table[3] = { 0x2208, 0x10C2, 0x10C1 };

 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 unsigned long ma = sil680_seldev(ap, adev, 0x08);
 unsigned long ua = sil680_seldev(ap, adev, 0x0C);
 unsigned long addr_mask = 0x80 + 4 * ap->port_no;
 int port_shift = adev->devno * 4;
 u8 scsc, mode;
 u16 multi, ultra;

 pci_read_config_byte(pdev, 0x8A, &scsc);
 pci_read_config_byte(pdev, addr_mask, &mode);
 pci_read_config_word(pdev, ma, &multi);
 pci_read_config_word(pdev, ua, &ultra);


 ultra &= ~0x3F;
 mode &= ~(0x03 << port_shift);


 scsc = (scsc & 0x30) ? 1: 0;

 if (adev->dma_mode >= XFER_UDMA_0) {
  multi = 0x10C1;
  ultra |= ultra_table[scsc][adev->dma_mode - XFER_UDMA_0];
  mode |= (0x03 << port_shift);
 } else {
  multi = dma_table[adev->dma_mode - XFER_MW_DMA_0];
  mode |= (0x02 << port_shift);
 }
 pci_write_config_byte(pdev, addr_mask, mode);
 pci_write_config_word(pdev, ma, multi);
 pci_write_config_word(pdev, ua, ultra);
}
