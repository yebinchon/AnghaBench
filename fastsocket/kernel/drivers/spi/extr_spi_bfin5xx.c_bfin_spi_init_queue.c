
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct driver_data {int * workqueue; TYPE_2__* master; int pump_messages; int pump_transfers; scalar_t__ busy; int run; int lock; int queue; } ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int EBUSY ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int QUEUE_STOPPED ;
 int bfin_spi_pump_messages ;
 int bfin_spi_pump_transfers ;
 int * create_singlethread_workqueue (int ) ;
 int dev_name (int ) ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;

__attribute__((used)) static inline int bfin_spi_init_queue(struct driver_data *drv_data)
{
 INIT_LIST_HEAD(&drv_data->queue);
 spin_lock_init(&drv_data->lock);

 drv_data->run = QUEUE_STOPPED;
 drv_data->busy = 0;


 tasklet_init(&drv_data->pump_transfers,
       bfin_spi_pump_transfers, (unsigned long)drv_data);


 INIT_WORK(&drv_data->pump_messages, bfin_spi_pump_messages);
 drv_data->workqueue = create_singlethread_workqueue(
    dev_name(drv_data->master->dev.parent));
 if (drv_data->workqueue == ((void*)0))
  return -EBUSY;

 return 0;
}
