
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct pci_bits {int member_0; int member_1; int member_2; int member_3; } ;
struct ata_port {size_t port_no; int cbl; TYPE_1__* host; } ;
struct ata_link {struct ata_port* ap; } ;
struct TYPE_2__ {int dev; } ;


 int ATA_CBL_PATA40 ;
 int ATA_CBL_PATA80 ;
 int ENOENT ;
 int ata_sff_prereset (struct ata_link*,unsigned long) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_test_config_bits (struct pci_dev*,struct pci_bits const*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;
 int udelay (int) ;

__attribute__((used)) static int hpt37x_pre_reset(struct ata_link *link, unsigned long deadline)
{
 u8 scr2, ata66;
 struct ata_port *ap = link->ap;
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 static const struct pci_bits hpt37x_enable_bits[] = {
  { 0x50, 1, 0x04, 0x04 },
  { 0x54, 1, 0x04, 0x04 }
 };
 if (!pci_test_config_bits(pdev, &hpt37x_enable_bits[ap->port_no]))
  return -ENOENT;

 pci_read_config_byte(pdev, 0x5B, &scr2);
 pci_write_config_byte(pdev, 0x5B, scr2 & ~0x01);

 pci_read_config_byte(pdev, 0x5A, &ata66);

 pci_write_config_byte(pdev, 0x5B, scr2);

 if (ata66 & (2 >> ap->port_no))
  ap->cbl = ATA_CBL_PATA40;
 else
  ap->cbl = ATA_CBL_PATA80;


 pci_write_config_byte(pdev, 0x50 + 4 * ap->port_no, 0x37);
 udelay(100);

 return ata_sff_prereset(link, deadline);
}
