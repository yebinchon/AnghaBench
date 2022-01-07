
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int enable_64bit_addressing; } ;
struct qla_hw_data {TYPE_3__* pdev; TYPE_1__* isp_ops; TYPE_2__ flags; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_4__ {int build_iocbs; int calc_req_entries; } ;


 int DMA_BIT_MASK (int) ;
 scalar_t__ MSD (int ) ;
 int dma_get_required_mask (int *) ;
 int dma_set_mask (int *,int ) ;
 int pci_set_consistent_dma_mask (TYPE_3__*,int ) ;
 int qla2x00_build_scsi_iocbs_64 ;
 int qla2x00_calc_iocbs_64 ;

__attribute__((used)) static void
qla2x00_config_dma_addressing(struct qla_hw_data *ha)
{

 ha->flags.enable_64bit_addressing = 0;

 if (!dma_set_mask(&ha->pdev->dev, DMA_BIT_MASK(64))) {

  if (MSD(dma_get_required_mask(&ha->pdev->dev)) &&
      !pci_set_consistent_dma_mask(ha->pdev, DMA_BIT_MASK(64))) {

   ha->flags.enable_64bit_addressing = 1;
   ha->isp_ops->calc_req_entries = qla2x00_calc_iocbs_64;
   ha->isp_ops->build_iocbs = qla2x00_build_scsi_iocbs_64;
   return;
  }
 }

 dma_set_mask(&ha->pdev->dev, DMA_BIT_MASK(32));
 pci_set_consistent_dma_mask(ha->pdev, DMA_BIT_MASK(32));
}
