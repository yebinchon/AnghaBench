
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct spi_message {int state; int actual_length; } ;
struct driver_data {int dma_channel; TYPE_1__* pdev; int pump_transfers; scalar_t__ cs_change; scalar_t__ len_in_bytes; int * tx; struct spi_message* cur_msg; struct chip_data* cur_chip; } ;
struct chip_data {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 unsigned short DMA_ERR ;
 int DMA_RUN ;
 int ERROR_STATE ;
 unsigned long HZ ;
 int IRQ_HANDLED ;
 int RBSY ;
 int SPIF ;
 int TXS ;
 int bfin_spi_cs_deactive (struct driver_data*,struct chip_data*) ;
 int bfin_spi_next_transfer (struct driver_data*) ;
 int clear_dma_irqstat (int ) ;
 int cpu_relax () ;
 int dev_dbg (int *,char*,unsigned short,...) ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*) ;
 int dma_disable_irq (int ) ;
 int get_dma_curr_irqstat (int ) ;
 unsigned long jiffies ;
 int read_STAT (struct driver_data*) ;
 int tasklet_schedule (int *) ;
 int time_before (unsigned long,unsigned long) ;

__attribute__((used)) static irqreturn_t bfin_spi_dma_irq_handler(int irq, void *dev_id)
{
 struct driver_data *drv_data = dev_id;
 struct chip_data *chip = drv_data->cur_chip;
 struct spi_message *msg = drv_data->cur_msg;
 unsigned long timeout;
 unsigned short dmastat = get_dma_curr_irqstat(drv_data->dma_channel);
 u16 spistat = read_STAT(drv_data);

 dev_dbg(&drv_data->pdev->dev,
  "in dma_irq_handler dmastat:0x%x spistat:0x%x\n",
  dmastat, spistat);

 clear_dma_irqstat(drv_data->dma_channel);


 while (get_dma_curr_irqstat(drv_data->dma_channel) & DMA_RUN)
  cpu_relax();







 if (drv_data->tx != ((void*)0)) {
  while ((read_STAT(drv_data) & TXS) ||
         (read_STAT(drv_data) & TXS))
   cpu_relax();
 }

 dev_dbg(&drv_data->pdev->dev,
  "in dma_irq_handler dmastat:0x%x spistat:0x%x\n",
  dmastat, read_STAT(drv_data));

 timeout = jiffies + HZ;
 while (!(read_STAT(drv_data) & SPIF))
  if (!time_before(jiffies, timeout)) {
   dev_warn(&drv_data->pdev->dev, "timeout waiting for SPIF");
   break;
  } else
   cpu_relax();

 if ((dmastat & DMA_ERR) && (spistat & RBSY)) {
  msg->state = ERROR_STATE;
  dev_err(&drv_data->pdev->dev, "dma receive: fifo/buffer overflow\n");
 } else {
  msg->actual_length += drv_data->len_in_bytes;

  if (drv_data->cs_change)
   bfin_spi_cs_deactive(drv_data, chip);


  msg->state = bfin_spi_next_transfer(drv_data);
 }


 tasklet_schedule(&drv_data->pump_transfers);


 dev_dbg(&drv_data->pdev->dev,
  "disable dma channel irq%d\n",
  drv_data->dma_channel);
 dma_disable_irq(drv_data->dma_channel);

 return IRQ_HANDLED;
}
