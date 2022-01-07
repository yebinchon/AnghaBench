
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {int dummy; } ;
struct ata_queued_cmd {struct ata_device* dev; struct ata_port* ap; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct ata_device {int devno; } ;
struct TYPE_2__ {int dev; } ;


 int ATIIXP_IDE_UDMA_CONTROL ;
 int ata_bmdma_start (struct ata_queued_cmd*) ;
 scalar_t__ ata_using_udma (struct ata_device*) ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pci_write_config_word (struct pci_dev*,int ,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void atiixp_bmdma_start(struct ata_queued_cmd *qc)
{
 struct ata_port *ap = qc->ap;
 struct ata_device *adev = qc->dev;

 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 int dn = (2 * ap->port_no) + adev->devno;
 u16 tmp16;

 pci_read_config_word(pdev, ATIIXP_IDE_UDMA_CONTROL, &tmp16);
 if (ata_using_udma(adev))
  tmp16 |= (1 << dn);
 else
  tmp16 &= ~(1 << dn);
 pci_write_config_word(pdev, ATIIXP_IDE_UDMA_CONTROL, tmp16);
 ata_bmdma_start(qc);
}
