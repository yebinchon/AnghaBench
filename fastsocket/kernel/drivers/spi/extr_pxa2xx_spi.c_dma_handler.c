
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct driver_data {int tx_channel; scalar_t__ ssp_type; TYPE_1__* pdev; int ioaddr; } ;
struct TYPE_2__ {int dev; } ;


 int DCSR (int) ;
 int DCSR_BUSERR ;
 int DCSR_ENDINTR ;
 int DMA_INT_MASK ;
 scalar_t__ PXA25x_SSP ;
 int dev_err (int *,char*) ;
 int dma_error_stop (struct driver_data*,char*) ;
 int dma_transfer_complete (struct driver_data*) ;
 scalar_t__ wait_ssp_rx_stall (int ) ;

__attribute__((used)) static void dma_handler(int channel, void *data)
{
 struct driver_data *drv_data = data;
 u32 irq_status = DCSR(channel) & DMA_INT_MASK;

 if (irq_status & DCSR_BUSERR) {

  if (channel == drv_data->tx_channel)
   dma_error_stop(drv_data,
     "dma_handler: "
     "bad bus address on tx channel");
  else
   dma_error_stop(drv_data,
     "dma_handler: "
     "bad bus address on rx channel");
  return;
 }


 if ((channel == drv_data->tx_channel)
  && (irq_status & DCSR_ENDINTR)
  && (drv_data->ssp_type == PXA25x_SSP)) {


  if (wait_ssp_rx_stall(drv_data->ioaddr) == 0)
   dev_err(&drv_data->pdev->dev,
    "dma_handler: ssp rx stall failed\n");


  dma_transfer_complete(drv_data);
 }
}
