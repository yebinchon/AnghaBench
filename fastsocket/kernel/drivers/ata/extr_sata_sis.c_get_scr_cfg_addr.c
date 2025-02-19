
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int device; } ;
struct ata_port {scalar_t__ port_no; TYPE_1__* host; } ;
struct ata_link {scalar_t__ pmp; struct ata_port* ap; } ;
struct TYPE_2__ {int dev; } ;


 unsigned int SIS180_SATA1_OFS ;
 unsigned int SIS182_SATA1_OFS ;
 int SIS_PMR ;
 int SIS_PMR_COMBINED ;
 int SIS_SCR_BASE ;
 int pci_read_config_byte (struct pci_dev*,int ,int*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static unsigned int get_scr_cfg_addr(struct ata_link *link, unsigned int sc_reg)
{
 struct ata_port *ap = link->ap;
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 unsigned int addr = SIS_SCR_BASE + (4 * sc_reg);
 u8 pmr;

 if (ap->port_no) {
  switch (pdev->device) {
  case 0x0180:
  case 0x0181:
   pci_read_config_byte(pdev, SIS_PMR, &pmr);
   if ((pmr & SIS_PMR_COMBINED) == 0)
    addr += SIS180_SATA1_OFS;
   break;

  case 0x0182:
  case 0x0183:
  case 0x1182:
   addr += SIS182_SATA1_OFS;
   break;
  }
 }
 if (link->pmp)
  addr += 0x10;

 return addr;
}
