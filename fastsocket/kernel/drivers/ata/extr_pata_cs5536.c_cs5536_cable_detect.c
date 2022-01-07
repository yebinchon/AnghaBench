
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dummy; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct TYPE_2__ {int dev; } ;


 int ATA_CBL_PATA40 ;
 int ATA_CBL_PATA80 ;
 int CFG ;
 int IDE_CFG_CABLE ;
 int cs5536_read (struct pci_dev*,int ,int*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int cs5536_cable_detect(struct ata_port *ap)
{
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 u32 cfg;

 cs5536_read(pdev, CFG, &cfg);

 if (cfg & (IDE_CFG_CABLE << ap->port_no))
  return ATA_CBL_PATA80;
 else
  return ATA_CBL_PATA40;
}
