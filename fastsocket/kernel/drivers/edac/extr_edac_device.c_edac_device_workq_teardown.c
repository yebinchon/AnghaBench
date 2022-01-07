
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edac_device_ctl_info {int work; } ;


 int cancel_delayed_work (int *) ;
 int edac_workqueue ;
 int flush_workqueue (int ) ;

void edac_device_workq_teardown(struct edac_device_ctl_info *edac_dev)
{
 int status;

 status = cancel_delayed_work(&edac_dev->work);
 if (status == 0) {

  flush_workqueue(edac_workqueue);
 }
}
