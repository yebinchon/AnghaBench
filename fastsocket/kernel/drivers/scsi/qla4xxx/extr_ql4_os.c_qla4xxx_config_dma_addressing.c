
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_qla_host {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int DMA_BIT_MASK (int) ;
 int dev_dbg (int *,char*) ;
 int pci_set_consistent_dma_mask (TYPE_1__*,int ) ;
 int pci_set_dma_mask (TYPE_1__*,int ) ;

__attribute__((used)) static void qla4xxx_config_dma_addressing(struct scsi_qla_host *ha)
{
 int retval;


 if (pci_set_dma_mask(ha->pdev, DMA_BIT_MASK(64)) == 0) {
  if (pci_set_consistent_dma_mask(ha->pdev, DMA_BIT_MASK(64))) {
   dev_dbg(&ha->pdev->dev,
      "Failed to set 64 bit PCI consistent mask; "
       "using 32 bit.\n");
   retval = pci_set_consistent_dma_mask(ha->pdev,
            DMA_BIT_MASK(32));
  }
 } else
  retval = pci_set_dma_mask(ha->pdev, DMA_BIT_MASK(32));
}
