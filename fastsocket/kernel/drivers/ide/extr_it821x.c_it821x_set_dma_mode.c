
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int ide_drive_t ;


 scalar_t__ const XFER_MW_DMA_0 ;
 scalar_t__ const XFER_MW_DMA_2 ;
 scalar_t__ const XFER_UDMA_0 ;
 scalar_t__ const XFER_UDMA_6 ;
 int it821x_tune_mwdma (int *,scalar_t__ const) ;
 int it821x_tune_udma (int *,scalar_t__ const) ;

__attribute__((used)) static void it821x_set_dma_mode(ide_drive_t *drive, const u8 speed)
{





 if (speed >= XFER_UDMA_0 && speed <= XFER_UDMA_6)
  it821x_tune_udma(drive, speed - XFER_UDMA_0);
 else if (speed >= XFER_MW_DMA_0 && speed <= XFER_MW_DMA_2)
  it821x_tune_mwdma(drive, speed - XFER_MW_DMA_0);
}
