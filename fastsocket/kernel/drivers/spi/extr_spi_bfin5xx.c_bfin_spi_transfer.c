
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_message {int queue; int state; int status; scalar_t__ actual_length; } ;
struct spi_device {int dev; int master; } ;
struct driver_data {scalar_t__ run; int lock; int pump_messages; int workqueue; int busy; int queue; } ;


 int EINPROGRESS ;
 int ESHUTDOWN ;
 scalar_t__ QUEUE_RUNNING ;
 scalar_t__ QUEUE_STOPPED ;
 int START_STATE ;
 int dev_dbg (int *,char*) ;
 int list_add_tail (int *,int *) ;
 int queue_work (int ,int *) ;
 struct driver_data* spi_master_get_devdata (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int bfin_spi_transfer(struct spi_device *spi, struct spi_message *msg)
{
 struct driver_data *drv_data = spi_master_get_devdata(spi->master);
 unsigned long flags;

 spin_lock_irqsave(&drv_data->lock, flags);

 if (drv_data->run == QUEUE_STOPPED) {
  spin_unlock_irqrestore(&drv_data->lock, flags);
  return -ESHUTDOWN;
 }

 msg->actual_length = 0;
 msg->status = -EINPROGRESS;
 msg->state = START_STATE;

 dev_dbg(&spi->dev, "adding an msg in transfer() \n");
 list_add_tail(&msg->queue, &drv_data->queue);

 if (drv_data->run == QUEUE_RUNNING && !drv_data->busy)
  queue_work(drv_data->workqueue, &drv_data->pump_messages);

 spin_unlock_irqrestore(&drv_data->lock, flags);

 return 0;
}
