
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ata_device {int dma_mode; size_t pio_mode; } ;


 int XFER_MW_DMA_0 ;
 size_t XFER_PIO_0 ;
 int ata_dev_enabled (struct ata_device*) ;

__attribute__((used)) static u8 optidma_make_bits43(struct ata_device *adev)
{
 static const u8 bits43[5] = {
  0, 0, 0, 1, 2
 };
 if (!ata_dev_enabled(adev))
  return 0;
 if (adev->dma_mode)
  return adev->dma_mode - XFER_MW_DMA_0;
 return bits43[adev->pio_mode - XFER_PIO_0];
}
