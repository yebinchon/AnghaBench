
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct ata_queued_cmd {struct ata_port* ap; } ;
struct ata_port {scalar_t__ port_no; TYPE_1__* host; } ;
struct TYPE_2__ {int dev; } ;


 int ARTTIM2 ;
 int ARTTIM23_INTR_CH1 ;
 int CFR ;
 int CFR_INTR_CH0 ;
 int ata_bmdma_stop (struct ata_queued_cmd*) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void cmd648_bmdma_stop(struct ata_queued_cmd *qc)
{
 struct ata_port *ap = qc->ap;
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 u8 dma_intr;
 int dma_mask = ap->port_no ? ARTTIM23_INTR_CH1 : CFR_INTR_CH0;
 int dma_reg = ap->port_no ? ARTTIM2 : CFR;

 ata_bmdma_stop(qc);

 pci_read_config_byte(pdev, dma_reg, &dma_intr);
 pci_write_config_byte(pdev, dma_reg, dma_intr | dma_mask);
}
