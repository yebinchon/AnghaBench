
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct pci_bits {int member_0; unsigned int member_1; int member_2; int member_3; } ;
struct ata_port {size_t port_no; TYPE_1__* host; } ;
struct ata_link {struct ata_port* ap; } ;
struct TYPE_2__ {int dev; } ;


 int ENOENT ;
 int ata_sff_prereset (struct ata_link*,unsigned long) ;
 int pci_test_config_bits (struct pci_dev*,struct pci_bits const*) ;
 int pci_write_config_byte (struct pci_dev*,int,int ) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int sis_pre_reset(struct ata_link *link, unsigned long deadline)
{
 static const struct pci_bits sis_enable_bits[] = {
  { 0x4aU, 1U, 0x02UL, 0x02UL },
  { 0x4aU, 1U, 0x04UL, 0x04UL },
 };

 struct ata_port *ap = link->ap;
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);

 if (!pci_test_config_bits(pdev, &sis_enable_bits[ap->port_no]))
  return -ENOENT;



 pci_write_config_byte(pdev, 0x4B, 0);
 return ata_sff_prereset(link, deadline);
}
