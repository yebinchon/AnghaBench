
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct driver_data {int workqueue; } ;


 int bfin_spi_stop_queue (struct driver_data*) ;
 int destroy_workqueue (int ) ;

__attribute__((used)) static inline int bfin_spi_destroy_queue(struct driver_data *drv_data)
{
 int status;

 status = bfin_spi_stop_queue(drv_data);
 if (status != 0)
  return status;

 destroy_workqueue(drv_data->workqueue);

 return 0;
}
