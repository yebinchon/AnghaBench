
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fnic {int notify_timer; int vdev; } ;



 int jiffies ;
 int mod_timer (int *,int ) ;
 int vnic_dev_get_intr_mode (int ) ;

__attribute__((used)) static void fnic_notify_timer_start(struct fnic *fnic)
{
 switch (vnic_dev_get_intr_mode(fnic->vdev)) {
 case 128:




  mod_timer(&fnic->notify_timer, jiffies);
  break;
 default:

  break;
 };
}
