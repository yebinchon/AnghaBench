
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct pci_dev {int devfn; } ;
struct hpt_info {scalar_t__ chip_type; } ;
struct TYPE_3__ {scalar_t__ select_data; scalar_t__ channel; int dev; } ;
typedef TYPE_1__ ide_hwif_t ;


 scalar_t__ ATA_CBL_PATA40 ;
 scalar_t__ ATA_CBL_PATA80 ;
 scalar_t__ HPT370 ;
 scalar_t__ HPT374 ;
 int PCI_FUNC (int ) ;
 struct hpt_info* hpt3xx_get_info (int ) ;
 int pci_read_config_byte (struct pci_dev*,int,scalar_t__*) ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,scalar_t__) ;
 int pci_write_config_word (struct pci_dev*,scalar_t__,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static u8 hpt3xx_cable_detect(ide_hwif_t *hwif)
{
 struct pci_dev *dev = to_pci_dev(hwif->dev);
 struct hpt_info *info = hpt3xx_get_info(hwif->dev);
 u8 chip_type = info->chip_type;
 u8 scr1 = 0, ata66 = hwif->channel ? 0x01 : 0x02;






 if (chip_type == HPT374 && (PCI_FUNC(dev->devfn) & 1)) {





  u8 mcr_addr = hwif->select_data + 2;
  u16 mcr;

  pci_read_config_word(dev, mcr_addr, &mcr);
  pci_write_config_word(dev, mcr_addr, (mcr | 0x8000));

  pci_read_config_byte(dev, 0x5a, &scr1);
  pci_write_config_word(dev, mcr_addr, mcr);
 } else if (chip_type >= HPT370) {




  u8 scr2 = 0;

  pci_read_config_byte(dev, 0x5b, &scr2);
  pci_write_config_byte(dev, 0x5b, (scr2 & ~1));

  pci_read_config_byte(dev, 0x5a, &scr1);
  pci_write_config_byte(dev, 0x5b, scr2);
 } else
  pci_read_config_byte(dev, 0x5a, &scr1);

 return (scr1 & ata66) ? ATA_CBL_PATA40 : ATA_CBL_PATA80;
}
