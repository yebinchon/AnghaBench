
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct pci_dev {int dummy; } ;
struct TYPE_3__ {int dev; } ;
typedef TYPE_1__ ide_hwif_t ;


 int ATA_CBL_PATA40 ;
 int ATA_CBL_PATA80 ;
 int CFG ;
 int IDE_CFG_CABLE ;
 int cs5536_read (struct pci_dev*,int ,int*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static u8 cs5536_cable_detect(ide_hwif_t *hwif)
{
 struct pci_dev *pdev = to_pci_dev(hwif->dev);
 u32 cfg;

 cs5536_read(pdev, CFG, &cfg);

 if (cfg & IDE_CFG_CABLE)
  return ATA_CBL_PATA80;
 else
  return ATA_CBL_PATA40;
}
