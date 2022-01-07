
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct driver_data {int lock; scalar_t__ busy; int queue; int run; } ;


 int EBUSY ;
 int QUEUE_STOPPED ;
 int list_empty (int *) ;
 int msleep (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline int bfin_spi_stop_queue(struct driver_data *drv_data)
{
 unsigned long flags;
 unsigned limit = 500;
 int status = 0;

 spin_lock_irqsave(&drv_data->lock, flags);







 drv_data->run = QUEUE_STOPPED;
 while (!list_empty(&drv_data->queue) && drv_data->busy && limit--) {
  spin_unlock_irqrestore(&drv_data->lock, flags);
  msleep(10);
  spin_lock_irqsave(&drv_data->lock, flags);
 }

 if (!list_empty(&drv_data->queue) || drv_data->busy)
  status = -EBUSY;

 spin_unlock_irqrestore(&drv_data->lock, flags);

 return status;
}
