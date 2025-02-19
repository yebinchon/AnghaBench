
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct via_isa_bridge {int flags; } ;
struct pci_dev {int dummy; } ;
struct pci_bits {int member_0; int member_1; int member_2; int member_3; } ;
struct ata_port {size_t port_no; TYPE_1__* host; } ;
struct ata_link {struct ata_port* ap; } ;
struct TYPE_2__ {int dev; struct via_isa_bridge* private_data; } ;


 int ENOENT ;
 int VIA_NO_ENABLES ;
 int ata_sff_prereset (struct ata_link*,unsigned long) ;
 int pci_test_config_bits (struct pci_dev*,struct pci_bits const*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int via_pre_reset(struct ata_link *link, unsigned long deadline)
{
 struct ata_port *ap = link->ap;
 const struct via_isa_bridge *config = ap->host->private_data;

 if (!(config->flags & VIA_NO_ENABLES)) {
  static const struct pci_bits via_enable_bits[] = {
   { 0x40, 1, 0x02, 0x02 },
   { 0x40, 1, 0x01, 0x01 }
  };
  struct pci_dev *pdev = to_pci_dev(ap->host->dev);
  if (!pci_test_config_bits(pdev, &via_enable_bits[ap->port_no]))
   return -ENOENT;
 }

 return ata_sff_prereset(link, deadline);
}
