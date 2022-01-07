
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct driver_data {scalar_t__ run; int pump_messages; int workqueue; int lock; int * cur_chip; int * cur_transfer; int * cur_msg; scalar_t__ busy; } ;


 int EBUSY ;
 scalar_t__ QUEUE_RUNNING ;
 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline int bfin_spi_start_queue(struct driver_data *drv_data)
{
 unsigned long flags;

 spin_lock_irqsave(&drv_data->lock, flags);

 if (drv_data->run == QUEUE_RUNNING || drv_data->busy) {
  spin_unlock_irqrestore(&drv_data->lock, flags);
  return -EBUSY;
 }

 drv_data->run = QUEUE_RUNNING;
 drv_data->cur_msg = ((void*)0);
 drv_data->cur_transfer = ((void*)0);
 drv_data->cur_chip = ((void*)0);
 spin_unlock_irqrestore(&drv_data->lock, flags);

 queue_work(drv_data->workqueue, &drv_data->pump_messages);

 return 0;
}
