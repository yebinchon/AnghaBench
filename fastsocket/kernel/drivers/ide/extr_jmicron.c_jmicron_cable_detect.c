
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct pci_dev {int dummy; } ;
typedef int port_type ;
struct TYPE_3__ {int channel; int dev; } ;
typedef TYPE_1__ ide_hwif_t ;


 int ATA_CBL_PATA40 ;
 int ATA_CBL_PATA80 ;



 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static u8 jmicron_cable_detect(ide_hwif_t *hwif)
{
 struct pci_dev *pdev = to_pci_dev(hwif->dev);

 u32 control;
 u32 control5;

 int port = hwif->channel;
 port_type port_map[2];

 pci_read_config_dword(pdev, 0x40, &control);




 if (control & (1 << 23)) {
  port_map[0] = 128;
  port_map[1] = 130;
 } else {
  port_map[0] = 128;
  port_map[1] = 128;
 }



 pci_read_config_dword(pdev, 0x80, &control5);
 if (control5 & (1<<24))
  port_map[0] = 129;


 if (control & (1 << 22))
  port = port ^ 1;






 switch (port_map[port]) {
 case 130:
  if (control & (1 << 3))
   return ATA_CBL_PATA40;
  return ATA_CBL_PATA80;
 case 129:
  if (control5 & (1 << 19))
   return ATA_CBL_PATA40;
  return ATA_CBL_PATA80;
 case 128:
  break;
 }

 return ATA_CBL_PATA80;
}
