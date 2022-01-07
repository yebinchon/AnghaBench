
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enic {int notify_timer; int vdev; } ;



 int jiffies ;
 int mod_timer (int *,int ) ;
 int vnic_dev_get_intr_mode (int ) ;

__attribute__((used)) static void enic_notify_timer_start(struct enic *enic)
{
 switch (vnic_dev_get_intr_mode(enic->vdev)) {
 case 128:
  mod_timer(&enic->notify_timer, jiffies);
  break;
 default:

  break;
 }
}
