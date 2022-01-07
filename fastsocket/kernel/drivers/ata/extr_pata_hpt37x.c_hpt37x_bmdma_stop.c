
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct ata_queued_cmd {struct ata_port* ap; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct TYPE_2__ {int dev; } ;


 int ata_bmdma_stop (struct ata_queued_cmd*) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void hpt37x_bmdma_stop(struct ata_queued_cmd *qc)
{
 struct ata_port *ap = qc->ap;
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 int mscreg = 0x50 + 4 * ap->port_no;
 u8 bwsr_stat, msc_stat;

 pci_read_config_byte(pdev, 0x6A, &bwsr_stat);
 pci_read_config_byte(pdev, mscreg, &msc_stat);
 if (bwsr_stat & (1 << ap->port_no))
  pci_write_config_byte(pdev, mscreg, msc_stat | 0x30);
 ata_bmdma_stop(qc);
}
