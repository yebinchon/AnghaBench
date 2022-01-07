
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {int dummy; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct TYPE_2__ {int dev; } ;


 int ATA_CBL_PATA40 ;
 int ATA_CBL_PATA80 ;
 int pci_read_config_word (struct pci_dev*,int,int*) ;
 int sis_short_ata40 (struct pci_dev*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int sis_133_cable_detect(struct ata_port *ap)
{
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 u16 tmp;


 pci_read_config_word(pdev, 0x50 + 2 * ap->port_no, &tmp);
 if ((tmp & 0x8000) && !sis_short_ata40(pdev))
  return ATA_CBL_PATA40;
 return ATA_CBL_PATA80;
}
